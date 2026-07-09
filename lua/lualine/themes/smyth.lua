local color = {
  dblk = "#1C1C1C",
  lblk = "#626262",
  dblu = "#6A94B0",
  lblu = "#6EBFFF",
  dred = "#B3574F",
  lred = "#FF6053",
  dmgt = "#A67EA1",
  lmgt = "#E895DC",
  dgrn = "#89A154",
  lgrn = "#A5D439",
  dcyn = "#499C8A",
  lcyn = "#7ED9CE",
  dylw = "#C09300",
  lylw = "#FFCC27",
  dwht = "#BCBCBC",
  lwht = "#EEEEEE",
  abgd = "#303030",
-- statusline-specific colors
  dgry = "#262626",
  lgry = "#585858",
  itxt = "#8A8A8A",
}

local smyth = {
  normal = {
    a = { fg = color.dblk, bg = color.lgrn , gui = "bold", },
    b = { fg = color.lwht, bg = color.lgry },
    c = { fg = color.dwht, bg = color.abgd },
  },
  visual = {
    a = { fg = color.dblk, bg = color.lred , gui = "bold", },
    b = { fg = color.lwht, bg = color.lgry },
    c = { fg = color.dwht, bg = color.abgd },
  },
  command = {
    a = { fg = color.dblk, bg = color.dcyn , gui = "bold", },
    b = { fg = color.lwht, bg = color.lgry },
    c = { fg = color.dwht, bg = color.abgd },
  },
  insert = {
    a = { fg = color.dblk, bg = color.lblu , gui = "bold", },
    b = { fg = color.dblk, bg = color.lwht },
    c = { fg = color.dwht, bg = color.abgd },
  },
  replace = {
    a = { fg = color.dblk, bg = color.dmgt , gui = "bold", },
    b = { fg = color.dblk, bg = color.lwht },
    c = { fg = color.dwht, bg = color.abgd },
  },
  inactive = {
    a = { fg = color.lgry, bg = color.dgry , gui = "bold", },
    b = { fg = color.lgry, bg = color.dgry },
    c = { fg = color.lgry, bg = color.dgry },
  },
}

return smyth
