let s:co = smyth#lightlineColorGroups()
let s:co.dgry = ['#262626', 235]
let s:co.lgry = ['#585858', 240]
let s:co.itxt = ['#8A8A8A', 245]

let s:p = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

let s:p.normal.left =    [ [s:co.dblk, s:co.lgrn, 'bold'], [s:co.lwht, s:co.lgry] ]
let s:p.normal.middle =  [ [s:co.dwht, s:co.abgd] ]
let s:p.normal.right =   [ [s:co.dblk, s:co.lgrn], [s:co.dwht, s:co.lgry], [s:co.dwht, s:co.abgd] ]

let s:p.insert.left =    [ [s:co.dblk, s:co.lblu, 'bold'], [s:co.dblk, s:co.lwht] ]
let s:p.insert.middle =  [ [s:co.dwht, s:co.abgd] ]
let s:p.insert.right =   [ [s:co.dblk, s:co.lblu], [s:co.dblk, s:co.lwht], [s:co.dwht, s:co.abgd] ]

let s:p.visual.left =    [ [s:co.dblk, s:co.lred, 'bold'], [s:co.lwht, s:co.lgry] ]
let s:p.visual.middle =  [ [s:co.dwht, s:co.abgd] ]
let s:p.visual.right =   [ [s:co.dblk, s:co.lred], [s:co.dwht, s:co.lgry], [s:co.dwht, s:co.abgd] ]

let s:p.replace.left =   [ [s:co.dblk, s:co.lylw, 'bold'], [s:co.dblk, s:co.lwht] ]
let s:p.replace.middle = [ [s:co.dwht, s:co.abgd] ]
let s:p.replace.right =  [ [s:co.dblk, s:co.lylw], [s:co.dblk, s:co.lwht], [s:co.dwht, s:co.abgd] ]

let s:p.inactive.left =  [ [s:co.lgry, s:co.dgry, 'bold'], [s:co.lgry, s:co.dgry] ]
let s:p.inactive.right = [ [s:co.lgry, s:co.dgry], [s:co.lgry, s:co.dgry], [s:co.lgry, s:co.dgry] ]

let s:p.tabline.left =   [ [s:co.itxt, s:co.abgd] ]
let s:p.tabline.middle = [ [s:co.dwht, s:co.abgd] ]
let s:p.tabline.right =  [ [s:co.dwht, s:co.lgry] ]
let s:p.tabline.tabsel = [ [s:co.dblk, s:co.dmgt] ]

let s:p.normal.error =   [ [s:co.dred, s:co.abgd] ]
let s:p.normal.warning = [ [s:co.dylw, s:co.abgd] ]

let g:lightline#colorscheme#smyth#palette = lightline#colorscheme#flatten(s:p)
