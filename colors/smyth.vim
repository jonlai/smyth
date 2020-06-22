" initialization
hi clear
if exists("syntax_on")
  syntax reset
endif
set t_Co=256
set background=dark
let g:colors_name = "smyth"

" https://github.com/vim/vim/tree/v8.2.0/runtime/doc/syntax.txt#L210
call smyth#hi('Comment',      'lblk',   '')
call smyth#hi('Constant',     'dred',   '')
call smyth#hi('Delimiter',    'lwht',   '')
call smyth#hi('Error',        'dblk', 'lred')
call smyth#hi('Identifier',   'dblu',   '')
call smyth#hi('Ignore',       'bgnd', 'bgnd')
call smyth#hi('Macro',        'dcyn',   '')
call smyth#hi('PreProc',      'dmgt',   '')
call smyth#hi('Special',      'dcyn',   '')
call smyth#hi('Statement',    'dgrn',   '')
call smyth#hi('StorageClass', 'dred',   '')
call smyth#hi('String',       'dylw',   '')
call smyth#hi('Todo',         'dblk', 'lylw')
call smyth#hi('Type',         'dblu',   '')
call smyth#hi('Underlined',   'lblu',   '',   'underline')
highlight link Boolean        Constant
highlight link Character      String
highlight link Conditional    Statement
highlight link Debug          Special
highlight link Define         Macro
highlight link Exception      Statement
highlight link Float          Constant
highlight link Function       Identifier
highlight link Include        PreProc
highlight link Kayword        Statement
highlight link Label          Statement
highlight link Number         Constant
highlight link Operator       Statement
highlight link PreCondit      PreProc
highlight link Repeat         Statement
highlight link SpecialChar    Special
highlight link SpecialComment Special
highlight link StorageClass   Type
highlight link Structure      Type
highlight link Tag            Special
highlight link Typedef        Type

" https://github.com/vim/vim/tree/v8.2.0/runtime/doc/syntax.txt#L5055
call smyth#hi('ColorColumn',        '',   'abgd')
call smyth#hi('Conceal',          'lwht', 'bgnd')
call smyth#hi('Cursor',           'dblk', 'lwht')
call smyth#hi('CursorColumn',       '',     '')
call smyth#hi('CursorLine',         '',     '')
call smyth#hi('CursorLineNr',     'dwht',   '',   'bold')
call smyth#hi('DiffAdd',          'dblk', 'dgrn')
call smyth#hi('DiffChange',       'dblk', 'dblu')
call smyth#hi('DiffDelete',       'dblk', 'dred')
call smyth#hi('DiffText',         'dblk', 'dylw')
call smyth#hi('Directory',        'dcyn',   '')
call smyth#hi('ErrorMsg',         'dred',   '',   'underline')
call smyth#hi('Folded',           'dcyn', 'abgd')
call smyth#hi('FoldColumn',       'dcyn', 'bgnd')
call smyth#hi('IncSearch',        'dblk', 'lmgt')
call smyth#hi('LineNr',           'lblk', 'bgnd')
call smyth#hi('LineNrAbove',      'lblk', 'bgnd')
call smyth#hi('LineNrBelow',      'lblk', 'bgnd')
call smyth#hi('MatchParen',       'lwht', 'dcyn')
call smyth#hi('ModeMsg',          'dmgt',   '',   'bold')
call smyth#hi('MoreMsg',          'dmgt',   '')
call smyth#hi('NonText',          'lblk',   '')
call smyth#hi('Normal',           'lwht', 'bgnd')
call smyth#hi('Pmenu',            'lwht', 'lblk')
call smyth#hi('PmenuSel',         'dblk', 'lmgt')
call smyth#hi('PmenuSbar',        'dwht', 'dwht')
call smyth#hi('PmenuThumb',       'lwht', 'lwht')
call smyth#hi('Question',         'dgrn',   '',   'underline')
call smyth#hi('Search',           'dblk', 'lcyn')
call smyth#hi('SignColumn',         '',     '')
call smyth#hi('SpecialKey',       'lblk',   '')
call smyth#hi('SpellBad',         'dblk', 'dred')
call smyth#hi('SpellCap',         'dblk', 'dblu')
call smyth#hi('SpellLocal',       'dblk', 'dylw')
call smyth#hi('SpellRare',        'dblk', 'dylw')
call smyth#hi('StatusLine',       'lwht', 'lblk')
call smyth#hi('StatusLineNC',     'dwht', 'abgd')
call smyth#hi('StatusLineTerm',   'lwht', 'lblk')
call smyth#hi('StatusLineTermNC', 'dwht', 'abgd')
call smyth#hi('TabLine',          'lwht', 'lblk')
call smyth#hi('TabLineFill',      'dwht', 'abgd')
call smyth#hi('TabLineSel',       'dblk', 'lmgt')
call smyth#hi('ToolbarButton',    'lwht', 'lblk', 'bold')
call smyth#hi('ToolbarLine',      'abgd', 'abgd')
call smyth#hi('Title',            'dblu',   '',   'bold')
call smyth#hi('VertSplit',        'dblk', 'lblk')
call smyth#hi('Visual',           'lblk', 'lwht')
call smyth#hi('VisualNOS',        'lblk', 'lwht')
call smyth#hi('WarningMsg',       'dylw',   '',   'underline')
call smyth#hi('WildMenu',         'dblk', 'lmgt')


" https://github.com/prabirshrestha/vim-lsp/tree/master
call smyth#hi('LspErrorText',            'dred', 'bgnd')
call smyth#hi('LspErrorHighlight',       'bgnd', 'dred', 'bold')
call smyth#hi('LspHintText',             'dgrn', 'bgnd')
call smyth#hi('LspHintHighlight',        'bgnd', 'dgrn', 'bold')
call smyth#hi('LspInformationText',      'dblu', 'bgnd')
call smyth#hi('LspInformationHighlight', 'bgnd', 'dblu', 'bold')
call smyth#hi('LspWarningText',          'dylw', 'bgnd')
call smyth#hi('LspWarningHighlight',     'bgnd', 'dylw', 'bold')

" https://github.com/dense-analysis/ale/tree/v2.6.0
highlight link ALEErrorSign        LspErrorText
highlight link ALEStyleErrorSign   LspErrorText
highlight link ALEStyleWarningSign LspWarningText
highlight link ALEWarningSign      LspWarningText

" https://github.com/pangloss/vim-javascript/tree/master
call smyth#hi('jsDocParam',                 'dwht',   '')
highlight link jsObjectProp                 Special
highlight link jsDestructuringAssignment    Special
highlight link jsDocTags                    Statement
highlight link jsExceptions                 PreProc
highlight link jsGlobalNodeObjects          PreProc
highlight link jsGlobalObjects              PreProc
highlight link jsOperatorKeyword            Constant
highlight link jsNull                       Constant
highlight link jsStorageClass               Statement
highlight link jsTemplateBraces             Special
highlight link jsThis                       PreProc
highlight link jsUndefined                  Constant

" https://github.com/rust-lang/rust.vim/tree/master
highlight link rustAssert                   Macro
highlight link rustCommentLineDoc           Comment
highlight link rustPanic                    Macro

" https://github.com/StanAngeloff/php.vim/tree/master
highlight link phpClasses                 PreProc
highlight link phpParent                  Delimiter
highlight link phpType                    Special

" https://github.com/airblade/vim-gitgutter/tree/master
call smyth#hi('GitGutterAdd',    'dgrn', 'bgnd')
call smyth#hi('GitGutterChange', 'dylw', 'bgnd')
call smyth#hi('GitGutterDelete', 'dred', 'bgnd')

" https://github.com/mhinz/vim-signify/tree/master
highlight link SignifySignAdd    GitGutterAdd
highlight link SignifySignChange GitGutterChange
highlight link SignifySignDelete GitGutterDelete
