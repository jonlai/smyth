/* eslint-env node */
// written on Node.js v12.10.0
"use strict";

const fs = require("fs");
const http = require("http");
const path = require("path");
const url = require("url");
const { inspect: stringify } = require("util");

const HTTP_OK = 200;
const HTTP_NOT_FOUND = 404;
const HTTP_SERVER_ERROR = 500;
const CONTENT_TYPE = {
  node: "text/plain; charset=utf-8",
  ".txt": "text/plain; charset=utf-8",
  ".html": "text/html; charset=utf-8",
  ".css": "text/css; charset=utf-8",
  ".js": "text/javascript; charset=utf-8",
  ".ico": "image/x-icon",
  ".png": "image/png",
  ".jpg": "image/jpeg",
};

const localStorage = {};

/**
 * Store all key/value pairs from the query into memory, overwriting any values
 * of existing keys.
 * @param {Object} query - a request's query
 * @returns {string} a receipt of all writes, to be sent back as a response
 */
const writeToStorage = query => {
  const receipts = Object.entries(query).reduce((acc, [key, newVal]) => {
    const oldVal = localStorage.hasOwnProperty(key) ? localStorage[key] : null;
    acc[key] = oldVal && oldVal !== newVal ? `${oldVal} => ${newVal}` : newVal;
    localStorage[key] = newVal;

    return acc;
  }, {});

  return "Success.\n" + stringify(receipts);
};

/**
 * Retrieve all values for the key names passed from the query, if set. Unset
 * keys have a "n/a" value.
 * @param {Object} query - a request's query (must contain a "key" property)
 * @param {string} query.key - a comma-delimited list of keys to retrieve
 * @returns {string} values of the specified keys, to be sent back as a response
 */
const readFromStorage = query => {
  const values = query.key.split(",").reduce((acc, key) => {
    acc[key] = localStorage.hasOwnProperty(key) ? localStorage[key] : "n/a";
    return acc;
  }, {});

  return stringify(values);
};

/**
 * Assign the appropriate codes/headers for a response and write the data. The
 * caller will still need to handle calling `response.end`.
 * @param {ServerResponse} res - a response object from Node's HTTP library
 * @param {number} code - the HTTP status code for the response
 * @param {string} type - the content type header for the response data
 * @param {string|Buffer} data - the data to send as the response
 * @returns {ServerResponse} the same response passed in, for optional chaining
 */
const writeResponse = (res, code, type, data) => {
  if (!Buffer.isBuffer(data) && typeof data !== "string") {
    const err = new Error(`Cannot send data type "${typeof data}" as response`);
    err.name = "ResponseTypeError";

    throw err;
  }

  res.statusCode = code;
  res.setHeader("Content-Type", type);
  res.write(data);

  return res;
};

const databaseFilepath = path.join(__dirname, "database.txt");

if (fs.existsSync(databaseFilepath)) {
  const databaseVals = JSON.parse(fs.readFileSync(databaseFilepath));
  Object.entries(databaseVals).forEach(([key, val]) => {
    localStorage[key] = val;
  });
}

const server = http.createServer((req, res) => {
  try {
    // "true" argument to `url.parse` sets parsed query to be an object literal
    const { pathname, query } = url.parse(req.url, true);
    // http://localhost:4000/set?key1=value1[&key2=value2...]
    if (pathname === "/set") {
      const result = writeToStorage(query);
      const databaseState = JSON.stringify(localStorage);
      fs.writeFileSync(databaseFilepath, databaseState);
      return writeResponse(res, HTTP_OK, CONTENT_TYPE.node, result).end();
    }
    // http://localhost:4000/get?key=key1[,key2...]
    if (pathname === "/get") {
      const result = readFromStorage(query);
      return writeResponse(res, HTTP_OK, CONTENT_TYPE.node, result).end();
    }
    // resolve the request path (directory request maps to `${dir}/index.html`)
    let absoluteFilepath = path.normalize(path.join(__dirname, pathname));
    if (fs.statSync(absoluteFilepath).isDirectory()) {
      absoluteFilepath = path.join(absoluteFilepath, "index.html");
    }
    // if the resolved request path matches a static file, serve it
    if (fs.existsSync(absoluteFilepath)) {
      const type = CONTENT_TYPE[path.parse(absoluteFilepath).ext || ".txt"];
      const data = fs.readFileSync(absoluteFilepath);

      return writeResponse(res, HTTP_OK, type, data).end();
    }
    // else, respond with a 404 error
    const msg = `Error: "${pathname}" not found`;
    return writeResponse(res, HTTP_NOT_FOUND, CONTENT_TYPE.node, msg).end();
  } catch (err) {
    // if anything goes wrong, respond with a 500 error
    const msg = `[${err.code || "ERROR"}] ${err.stack || err.message}`;
    return writeResponse(res, HTTP_SERVER_ERROR, CONTENT_TYPE.node, msg).end();
  }
});

server.listen(4000, "localhost", () => {
  // eslint-disable-next-line no-console
  console.log("Server running at http://localhost:4000");
});
