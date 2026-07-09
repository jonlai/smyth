" initialization
hi clear
if exists("syntax_on")
  syntax reset
endif
set t_Co=256
set background=dark
let g:colors_name = "smyth"

" syntax groups
" https://neovim.io/doc/user/syntax/#group-name
" https://github.com/vim/vim/blob/v9.2.0/runtime/doc/syntax.txt#L210
" ==========
call smyth#hi('Comment',      'lblk', '')

call smyth#hi('Constant',     'dred', '')
call smyth#hi('String',       'dylw', '')
highlight link Character      String
highlight link Number         Constant
highlight link Boolean        Constant
highlight link Float          Constant

call smyth#hi('Identifier',   'dblu', '')
call smyth#hi('Function',     'dmgt', '')

call smyth#hi('Statement',    'dgrn', '')
highlight link Conditional    Statement
highlight link Repeat         Statement
highlight link Label          Statement
highlight link Operator       Statement
highlight link Keyword        Statement
highlight link Exception      Statement

call smyth#hi('PreProc',      'dred', '')
highlight link Include        PreProc
call smyth#hi('Define',       'dcyn', '')
highlight link Macro          Define
highlight link PreCondit      PreProc

call smyth#hi('Type',         'dblu', '')
highlight link StorageClass   Type
highlight link Structure      Type
highlight link Typedef        Type

call smyth#hi('Special',      'dcyn', '')
highlight link SpecialChar    Special
highlight link Tag            Special
call smyth#hi('Delimiter',    'lwht', '')
highlight link SpecialComment Special
highlight link Debug          Special

call smyth#hi('Underlined',   'lblu', '',     'underline')
highlight link Dimmed         Comment

call smyth#hi('Ignore',       'bgnd', 'bgnd')

call smyth#hi('Error',        'dblk', 'lred')

call smyth#hi('Todo',         'dblk', 'lylw')

call smyth#hi('Added',        'dblk', 'dgrn')
call smyth#hi('Changed',      'dblk', 'dblu')
call smyth#hi('Removed',      'dblk', 'dred')

" highlight groups
" https://neovim.io/doc/user/syntax/#highlight-groups
" https://github.com/vim/vim/blob/v9.2.0/runtime/doc/syntax.txt#L5938
" ----------
call smyth#hi('ColorColumn',      '',     'abgd')
call smyth#hi('Conceal',          'lwht', 'bgnd')
highlight link CurSearch          IncSearch
call smyth#hi('Cursor',           'dblk', 'lwht')
highlight link lCursor            Cursor
highlight link CursorIM           Cursor
call smyth#hi('CursorColumn',     '',     '')
call smyth#hi('CursorLine',       '',     '')
call smyth#hi('Directory',        'dcyn', '')
highlight link DiffAdd            Added
highlight link DiffChange         Changed
highlight link DiffDelete         Removed
call smyth#hi('DiffText',         'dblk', 'dylw')
highlight link DiffTextAdd        DiffText
highlight link EndOfBuffer        NonText
highlight link TermCursor         Cursor
call smyth#hi('OkMsg',            'dgrn', '')
call smyth#hi('WarningMsg',       'dylw', '',     'underline')
call smyth#hi('ErrorMsg',         'dred', '',     'underline')
highlight link StderrMsg          ErrorMsg
highlight link StdoutMsg          MoreMsg
call smyth#hi('VertSplit',        'dblk', 'lblk')
highlight link WinSeparator       VertSplit
call smyth#hi('Folded',           'dcyn', 'abgd')
call smyth#hi('FoldColumn',       'dcyn', 'bgnd')
call smyth#hi('SignColumn',       '',     '')
call smyth#hi('IncSearch',        'dblk', 'lmgt')
highlight link Substitute         IncSearch
call smyth#hi('LineNr',           'lblk', 'bgnd')
call smyth#hi('LineNrAbove',      'lblk', 'bgnd')
call smyth#hi('LineNrBelow',      'lblk', 'bgnd')
call smyth#hi('CursorLineNr',     'dwht', '',     'bold')
highlight link CursorLineFold     FoldColumn
highlight link CursorLineSign     SignColumn
call smyth#hi('MatchParen',       'lwht', 'dcyn')
highlight link MessageWindow      WarningMsg
call smyth#hi('ModeMsg',          'dmgt', '',     'bold')
highlight link MsgArea            Normal
highlight link MsgSeparator       WinSeparator
call smyth#hi('MoreMsg',          'dmgt', '')
call smyth#hi('NonText',          'lblk', '')
call smyth#hi('Normal',           'lwht', 'bgnd')
highlight link ComplMatchIns      IncSearch
highlight link PreInsert          Comment
highlight link ComplHint          Comment
highlight link ComplHintMore      Comment
call smyth#hi('Question',         'dgrn', '',     'underline')
highlight link QuickFixLine       Visual
call smyth#hi('Search',           'dblk', 'lcyn')
call smyth#hi('SpecialKey',       'lblk', '')
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
call smyth#hi('Title',            'dblu', '',     'bold')
call smyth#hi('Visual',           'lblk', 'lwht')
call smyth#hi('VisualNOS',        'lblk', 'lwht')
highlight link Whitespace         SpecialKey
call smyth#hi('WildMenu',         'dblk', 'lmgt')

" vim/neovim GUI components
" ----------
highlight link NormalFloat          Pmenu
highlight link FloatBorder          WinSeparator
highlight link FloatShadow          PmenuShadow
highlight link FloatShadowThrough   FloatShadow
highlight link FloatTitle           Title
highlight link FloatFooter          Title
highlight link NormalNC             Normal
call smyth#hi('Pmenu',              'lwht', 'lblk')
call smyth#hi('PmenuSel',           'dblk', 'dmgt')
highlight link PmenuKind            Pmenu
highlight link PmenuKindSel         PmenuSel
highlight link PmenuExtra           Pmenu
highlight link PmenuExtraSel        PmenuSel
call smyth#hi('PmenuSbar',          'dwht', 'dwht')
call smyth#hi('PmenuThumb',         'lwht', 'lwht')
call smyth#hi('PmenuMatch',         'lwht', 'lblk', 'bold')
call smyth#hi('PmenuMatchSel',      'dblk', 'lmgt', 'bold')
highlight link PmenuBorder          Pmenu
call smyth#hi('PmenuShadow',        '',     'abgd')
highlight link PmenuShadowThrough   PmenuShadow
highlight link PopupNotification    WarningMsg
highlight link PopupSelected        PmenuSel
highlight link TitleBar             StatusLine
highlight link TitleBarNC           StatusLineNC
highlight link WinBar               StatusLine
highlight link WinBarNC             StatusLineNC
highlight link SnippetTabstop       Pmenu
highlight link SnippetTabstopActive PmenuSel

" vim/neovim diagnostics
" ----------
call smyth#hi('DiagnosticError', 'dred', 'bgnd')
call smyth#hi('DiagnosticWarn',  'dylw', 'bgnd')
call smyth#hi('DiagnosticInfo',  'dcyn', 'bgnd')
call smyth#hi('DiagnosticHint',  'dblu', 'bgnd')
call smyth#hi('DiagnosticOk',    'dgrn', 'bgnd')

" https://github.com/prabirshrestha/vim-lsp/tree/master
highlight link LspErrorText       DiagnosticError
highlight link LspWarningText     DiagnosticWarn
highlight link LspInformationText DiagnosticInfo
highlight link LspHintText        DiagnosticHint

" https://github.com/dense-analysis/ale/tree/v2.6.0
highlight link ALEErrorSign        DiagnosticError
highlight link ALEStyleErrorSign   DiagnosticError
highlight link ALEStyleWarningSign DiagnosticWarn
highlight link ALEWarningSign      DiagnosticWarn

" https://github.com/airblade/vim-gitgutter/tree/master
call smyth#hi('GitGutterAdd',    'dgrn', 'bgnd')
call smyth#hi('GitGutterChange', 'dylw', 'bgnd')
call smyth#hi('GitGutterDelete', 'dred', 'bgnd')
