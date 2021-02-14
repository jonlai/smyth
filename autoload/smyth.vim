let s:guicolor = {
\ 'dblk': '#1C1C1C', 'dred': '#B3574F', 'dgrn': '#89A154', 'dylw': '#C09300',
\ 'lblk': '#626262', 'lred': '#FF6053', 'lgrn': '#A5D439', 'lylw': '#FFCC27',
\ 'dblu': '#6A94B0', 'dmgt': '#A67EA1', 'dcyn': '#499C8A', 'dwht': '#BCBCBC',
\ 'lblu': '#6EBFFF', 'lmgt': '#E895DC', 'lcyn': '#7ED9CE', 'lwht': '#EEEEEE',
\ 'bgnd': '#1C1C1C', 'abgd': '#303030', 'afgd': '#DADADA', 'fgnd': '#EEEEEE'
\}

let s:nativecolor = {
\ 'dblk':   0, 'dred':   1, 'dgrn':   2, 'dylw':   3,
\ 'lblk':   8, 'lred':   9, 'lgrn':  10, 'lylw':  11,
\ 'dblu':   4, 'dmgt':   5, 'dcyn':   6, 'dwht':   7,
\ 'lblu':  12, 'lmgt':  13, 'lcyn':  14, 'lwht':  15,
\ 'bgnd':   0, 'abgd': 236, 'afgd': 253, 'fgnd':  15
\}

let s:xtermcolor = {
\ 'dblk': 234, 'dred': 131, 'dgrn': 107, 'dylw': 136,
\ 'lblk': 241, 'lred': 203, 'lgrn': 149, 'lylw': 220,
\ 'dblu':  67, 'dmgt': 139, 'dcyn':  36, 'dwht': 250,
\ 'lblu':  75, 'lmgt': 176, 'lcyn': 116, 'lwht': 255,
\ 'bgnd': 234, 'abgd': 236, 'afgd': 253, 'fgnd': 255
\}

let s:termcolor = get(g:, 'smyth_termcolor', 0) ? s:xtermcolor : s:nativecolor

fu! smyth#lightlineColorGroups()
  let l:gc = s:guicolor
  let l:tc = s:termcolor
  return {
  \ 'dblk': [l:gc.dblk, l:tc.dblk], 'lblk': [l:gc.lblk, l:tc.lblk],
  \ 'dblu': [l:gc.dblu, l:tc.dblu], 'lblu': [l:gc.lblu, l:tc.lblu],
  \ 'dred': [l:gc.dred, l:tc.dred], 'lred': [l:gc.lred, l:tc.lred],
  \ 'dmgt': [l:gc.dmgt, l:tc.dmgt], 'lmgt': [l:gc.lmgt, l:tc.lmgt],
  \ 'dgrn': [l:gc.dgrn, l:tc.dgrn], 'lgrn': [l:gc.lgrn, l:tc.lgrn],
  \ 'dcyn': [l:gc.dcyn, l:tc.dcyn], 'lcyn': [l:gc.lcyn, l:tc.lcyn],
  \ 'dylw': [l:gc.dylw, l:tc.dylw], 'lylw': [l:gc.lylw, l:tc.lylw],
  \ 'dwht': [l:gc.dwht, l:tc.dwht], 'lwht': [l:gc.lwht, l:tc.lwht],
  \ 'bgnd': [l:gc.bgnd, l:tc.bgnd], 'abgd': [l:gc.abgd, l:tc.abgd],
  \ 'fgnd': [l:gc.fgnd, l:tc.fgnd], 'afgd': [l:gc.afgd, l:tc.afgd],
  \}
endfu

fu! smyth#hi(item, fg, bg, ...)
  let l:ctermfg = get(s:termcolor, a:fg, 'NONE')
  let l:ctermbg = get(s:termcolor, a:bg, 'NONE')
  let l:guifg = get(s:guicolor, a:fg, 'NONE')
  let l:guibg = get(s:guicolor, a:bg, 'NONE')
  let l:attr = get(a:, 1, 'NONE')

  exe printf(
  \ "hi %s term=%s ctermfg=%s ctermbg=%s cterm=%s guifg=%s guibg=%s gui=%s",
  \ a:item, l:attr, l:ctermfg, l:ctermbg, l:attr, l:guifg, l:guibg, l:attr
  \)
endfu
