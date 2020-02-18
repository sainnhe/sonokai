" -----------------------------------------------------------------------------
" Name:         Sonokai
" Description:  High Contrast & Vivid Color Scheme based on Monokai Pro
" Author:       Sainnhepark <sainnhe@gmail.com>
" Website:      https://github.com/sainnhe/sonokai/
" License:      MIT
" -----------------------------------------------------------------------------

" Initialization: {{{
highlight clear
if exists('syntax_on')
  syntax reset
endif
set background=dark

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

let g:colors_name = 'sonokai'
" }}}
" Configuration: {{{
let s:configuration = {}
let s:configuration.style = get(g:, 'sonokai_style', 'shusia')
let s:configuration.transparent_background = get(g:, 'sonokai_transparent_background', 0)
let s:configuration.menu_selection_background = get(g:, 'sonokai_menu_selection_background', 'green')
let s:configuration.disable_italic_comment = get(g:, 'sonokai_disable_italic_comment', 0)
let s:configuration.enable_italic = get(g:, 'sonokai_enable_italic', 0)
let s:configuration.current_word = get(g:, 'sonokai_current_word', get(g:, 'sonokai_transparent_background', 0) == 0 ? 'grey background' : 'bold')
" }}}
" Palette: {{{
if s:configuration.style ==# 'shusia'
  let s:palette = {
        \ 'black':      ['#1a181a',   '237',  'DarkGrey'],
        \ 'bg0':        ['#2d2a2e',   '235',  'Black'],
        \ 'bg1':        ['#343136',   '236',  'DarkGrey'],
        \ 'bg2':        ['#3b383e',   '236',  'DarkGrey'],
        \ 'bg3':        ['#423f46',   '237',  'DarkGrey'],
        \ 'bg4':        ['#49464e',   '237',  'Grey'],
        \ 'bg_red':     ['#ff6188',   '203',  'Red'],
        \ 'diff_red':   ['#3d2226',   '52',   'DarkRed'],
        \ 'bg_green':   ['#a9dc76',   '107',  'Green'],
        \ 'diff_green': ['#253a26',   '22',   'DarkGreen'],
        \ 'bg_blue':    ['#78dce8',   '110',  'Blue'],
        \ 'diff_blue':  ['#25223e',   '17',   'DarkBlue'],
        \ 'fg':         ['#e3e1e4',   '250',  'White'],
        \ 'red':        ['#f85e84',   '203',  'Red'],
        \ 'orange':     ['#ef9062',   '215',  'Orange'],
        \ 'yellow':     ['#e5c463',   '179',  'Yellow'],
        \ 'green':      ['#9ecd6f',   '107',  'Green'],
        \ 'blue':       ['#7accd7',   '110',  'Blue'],
        \ 'purple':     ['#ab9df2',   '176',  'Magenta'],
        \ 'grey':       ['#848089',   '246',  'LightGrey'],
        \ 'none':       ['NONE',      'NONE', 'NONE']
        \ }
elseif s:configuration.style ==# 'andromeda'
  let s:palette = {
        \ 'black':      ['#181a1c',   '237',  'DarkGrey'],
        \ 'bg0':        ['#2b2d37',   '235',  'Black'],
        \ 'bg1':        ['#2f323e',   '236',  'DarkGrey'],
        \ 'bg2':        ['#363a49',   '236',  'DarkGrey'],
        \ 'bg3':        ['#3a3e4e',   '237',  'DarkGrey'],
        \ 'bg4':        ['#404455',   '237',  'Grey'],
        \ 'bg_red':     ['#ff6188',   '203',  'Red'],
        \ 'diff_red':   ['#473536',   '52',   'DarkRed'],
        \ 'bg_green':   ['#a9dc76',   '107',  'Green'],
        \ 'diff_green': ['#384034',   '22',   'DarkGreen'],
        \ 'bg_blue':    ['#77d5f0',   '110',  'Blue'],
        \ 'diff_blue':  ['#323e47',   '17',   'DarkBlue'],
        \ 'fg':         ['#e1e3e4',   '250',  'White'],
        \ 'red':        ['#fb617e',   '203',  'Red'],
        \ 'orange':     ['#f89860',   '215',  'Orange'],
        \ 'yellow':     ['#edc161',   '179',  'Yellow'],
        \ 'green':      ['#9ed06c',   '107',  'Green'],
        \ 'blue':       ['#6dcae8',   '110',  'Blue'],
        \ 'purple':     ['#bb97ee',   '176',  'Magenta'],
        \ 'grey':       ['#7e8294',   '246',  'LightGrey'],
        \ 'none':       ['NONE',      'NONE', 'NONE']
        \ }
elseif s:configuration.style ==# 'atlantis'
  let s:palette = {
        \ 'black':      ['#181a1c',   '237',  'DarkGrey'],
        \ 'bg0':        ['#2a2f38',   '235',  'Black'],
        \ 'bg1':        ['#303541',   '236',  'DarkGrey'],
        \ 'bg2':        ['#373c4b',   '236',  'DarkGrey'],
        \ 'bg3':        ['#3d4455',   '237',  'DarkGrey'],
        \ 'bg4':        ['#424b5b',   '237',  'Grey'],
        \ 'bg_red':     ['#ff6d7e',   '203',  'Red'],
        \ 'diff_red':   ['#473536',   '52',   'DarkRed'],
        \ 'bg_green':   ['#a5e179',   '107',  'Green'],
        \ 'diff_green': ['#384034',   '22',   'DarkGreen'],
        \ 'bg_blue':    ['#7ad5f1',   '110',  'Blue'],
        \ 'diff_blue':  ['#323e47',   '17',   'DarkBlue'],
        \ 'fg':         ['#e1e3e4',   '250',  'White'],
        \ 'red':        ['#fd6376',   '203',  'Red'],
        \ 'orange':     ['#f69c5e',   '215',  'Orange'],
        \ 'yellow':     ['#ebc65f',   '179',  'Yellow'],
        \ 'green':      ['#9dd274',   '107',  'Green'],
        \ 'blue':       ['#72cce8',   '110',  'Blue'],
        \ 'purple':     ['#ba9cf3',   '176',  'Magenta'],
        \ 'grey':       ['#828a9a',   '246',  'LightGrey'],
        \ 'none':       ['NONE',      'NONE', 'NONE']
        \ }
elseif s:configuration.style ==# 'maia'
  let s:palette = {
        \ 'black':      ['#1c1e1f',   '237',  'DarkGrey'],
        \ 'bg0':        ['#273136',   '235',  'Black'],
        \ 'bg1':        ['#2e383e',   '236',  'DarkGrey'],
        \ 'bg2':        ['#353f46',   '236',  'DarkGrey'],
        \ 'bg3':        ['#3a444b',   '237',  'DarkGrey'],
        \ 'bg4':        ['#414b53',   '237',  'Grey'],
        \ 'bg_red':     ['#ff6d7e',   '203',  'Red'],
        \ 'diff_red':   ['#37292e',   '52',   'DarkRed'],
        \ 'bg_green':   ['#a2e57b',   '107',  'Green'],
        \ 'diff_green': ['#1f412e',   '22',   'DarkGreen'],
        \ 'bg_blue':    ['#7cd5f1',   '110',  'Blue'],
        \ 'diff_blue':  ['#1f2946',   '17',   'DarkBlue'],
        \ 'fg':         ['#e1e2e3',   '250',  'White'],
        \ 'red':        ['#f76c7c',   '203',  'Red'],
        \ 'orange':     ['#f3a96a',   '215',  'Orange'],
        \ 'yellow':     ['#e3d367',   '179',  'Yellow'],
        \ 'green':      ['#9cd57b',   '107',  'Green'],
        \ 'blue':       ['#78cee9',   '110',  'Blue'],
        \ 'purple':     ['#baa0f8',   '176',  'Magenta'],
        \ 'grey':       ['#82878b',   '246',  'LightGrey'],
        \ 'none':       ['NONE',      'NONE', 'NONE']
        \ }
endif
" }}}
" Function: {{{
" call s:HL(group, foreground, background)
" call s:HL(group, foreground, background, gui, guisp)
"
" E.g.:
" call s:HL('Normal', s:palette.fg, s:palette.bg0)

if (has('termguicolors') && &termguicolors) || has('gui_running')  " guifg guibg gui cterm guisp
  function! s:HL(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'guifg=' . a:fg[0],
          \ 'guibg=' . a:bg[0],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        call add(hl_string, 'gui=undercurl')
        call add(hl_string, 'cterm=underline')
      else
        call add(hl_string, 'gui=' . a:1)
        call add(hl_string, 'cterm=' . a:1)
      endif
    else
      call add(hl_string, 'gui=NONE')
      call add(hl_string, 'cterm=NONE')
    endif
    if a:0 >= 2
      call add(hl_string, 'guisp=' . a:2[0])
    endif
    execute join(hl_string, ' ')
  endfunction
elseif s:t_Co >= 256  " ctermfg ctermbg cterm
  function! s:HL(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'ctermfg=' . a:fg[1],
          \ 'ctermbg=' . a:bg[1],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        call add(hl_string, 'cterm=underline')
      else
        call add(hl_string, 'cterm=' . a:1)
      endif
    else
      call add(hl_string, 'cterm=NONE')
    endif
    execute join(hl_string, ' ')
  endfunction
else  " ctermfg ctermbg cterm
  function! s:HL(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'ctermfg=' . a:fg[2],
          \ 'ctermbg=' . a:bg[2],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        call add(hl_string, 'cterm=underline')
      else
        call add(hl_string, 'cterm=' . a:1)
      endif
    else
      call add(hl_string, 'cterm=NONE')
    endif
    execute join(hl_string, ' ')
  endfunction
endif
" }}}

" Common Highlight Groups: {{{
" UI: {{{
if s:configuration.transparent_background
  call s:HL('Normal', s:palette.fg, s:palette.none)
  call s:HL('Terminal', s:palette.fg, s:palette.none)
  call s:HL('EndOfBuffer', s:palette.bg0, s:palette.none)
  call s:HL('FoldColumn', s:palette.grey, s:palette.none)
  call s:HL('Folded', s:palette.grey, s:palette.none)
  call s:HL('SignColumn', s:palette.fg, s:palette.none)
else
  call s:HL('Normal', s:palette.fg, s:palette.bg0)
  call s:HL('Terminal', s:palette.fg, s:palette.bg0)
  call s:HL('EndOfBuffer', s:palette.bg0, s:palette.bg0)
  call s:HL('FoldColumn', s:palette.grey, s:palette.bg1)
  call s:HL('Folded', s:palette.grey, s:palette.bg1)
  call s:HL('SignColumn', s:palette.fg, s:palette.bg1)
endif
call s:HL('ColorColumn', s:palette.none, s:palette.bg1)
call s:HL('Conceal', s:palette.grey, s:palette.none)
call s:HL('Cursor', s:palette.none, s:palette.none, 'reverse')
call s:HL('lCursor', s:palette.none, s:palette.none, 'reverse')
call s:HL('CursorColumn', s:palette.none, s:palette.bg1)
call s:HL('CursorLine', s:palette.none, s:palette.bg1)
call s:HL('LineNr', s:palette.grey, s:palette.none)
if &relativenumber == 1 && &cursorline == 0
  call s:HL('CursorLineNr', s:palette.fg, s:palette.none)
else
  call s:HL('CursorLineNr', s:palette.fg, s:palette.bg1)
endif
call s:HL('DiffAdd', s:palette.none, s:palette.diff_green)
call s:HL('DiffChange', s:palette.none, s:palette.diff_blue)
call s:HL('DiffDelete', s:palette.none, s:palette.diff_red)
call s:HL('DiffText', s:palette.none, s:palette.none, 'reverse')
call s:HL('Directory', s:palette.green, s:palette.none)
call s:HL('ErrorMsg', s:palette.red, s:palette.none, 'bold,underline')
call s:HL('WarningMsg', s:palette.yellow, s:palette.none, 'bold')
call s:HL('ModeMsg', s:palette.fg, s:palette.none, 'bold')
call s:HL('MoreMsg', s:palette.blue, s:palette.none, 'bold')
call s:HL('IncSearch', s:palette.none, s:palette.none, 'reverse')
call s:HL('Search', s:palette.none, s:palette.bg3)
call s:HL('MatchParen', s:palette.none, s:palette.bg4)
call s:HL('NonText', s:palette.grey, s:palette.none)
call s:HL('Pmenu', s:palette.fg, s:palette.bg2)
call s:HL('PmenuSbar', s:palette.none, s:palette.bg2)
if s:configuration.menu_selection_background ==# 'blue'
  call s:HL('PmenuSel', s:palette.bg0, s:palette.bg_blue)
  call s:HL('WildMenu', s:palette.bg0, s:palette.bg_blue)
elseif s:configuration.menu_selection_background ==# 'green'
  call s:HL('PmenuSel', s:palette.bg0, s:palette.bg_green)
  call s:HL('WildMenu', s:palette.bg0, s:palette.bg_green)
elseif s:configuration.menu_selection_background ==# 'red'
  call s:HL('PmenuSel', s:palette.bg0, s:palette.bg_red)
  call s:HL('WildMenu', s:palette.bg0, s:palette.bg_red)
endif
call s:HL('PmenuThumb', s:palette.none, s:palette.grey)
call s:HL('Question', s:palette.yellow, s:palette.none)
call s:HL('SpellBad', s:palette.red, s:palette.none, 'undercurl', s:palette.red)
call s:HL('SpellCap', s:palette.yellow, s:palette.none, 'undercurl', s:palette.yellow)
call s:HL('SpellLocal', s:palette.blue, s:palette.none, 'undercurl', s:palette.blue)
call s:HL('SpellRare', s:palette.purple, s:palette.none, 'undercurl', s:palette.purple)
call s:HL('StatusLine', s:palette.fg, s:palette.bg3)
call s:HL('StatusLineTerm', s:palette.fg, s:palette.bg3)
call s:HL('StatusLineNC', s:palette.grey, s:palette.bg1)
call s:HL('StatusLineTermNC', s:palette.grey, s:palette.bg1)
call s:HL('TabLine', s:palette.fg, s:palette.bg4)
call s:HL('TabLineFill', s:palette.grey, s:palette.bg1)
call s:HL('TabLineSel', s:palette.bg0, s:palette.bg_red)
call s:HL('VertSplit', s:palette.black, s:palette.none)
call s:HL('Visual', s:palette.none, s:palette.bg3)
call s:HL('VisualNOS', s:palette.none, s:palette.bg3, 'underline')
call s:HL('CursorIM', s:palette.none, s:palette.fg)
call s:HL('ToolbarLine', s:palette.none, s:palette.grey)
call s:HL('ToolbarButton', s:palette.fg, s:palette.bg0, 'bold')
call s:HL('QuickFixLine', s:palette.blue, s:palette.bg1)
call s:HL('Debug', s:palette.yellow, s:palette.none)
" }}}
" Syntax: {{{
if s:configuration.enable_italic
  call s:HL('PreProc', s:palette.red, s:palette.none, 'italic')
  call s:HL('PreCondit', s:palette.red, s:palette.none, 'italic')
  call s:HL('Include', s:palette.red, s:palette.none, 'italic')
  call s:HL('Keyword', s:palette.red, s:palette.none, 'italic')
  call s:HL('Type', s:palette.blue, s:palette.none, 'italic')
  call s:HL('Structure', s:palette.blue, s:palette.none, 'italic')
  call s:HL('StorageClass', s:palette.blue, s:palette.none, 'italic')
else
  call s:HL('PreProc', s:palette.red, s:palette.none)
  call s:HL('PreCondit', s:palette.red, s:palette.none)
  call s:HL('Include', s:palette.red, s:palette.none)
  call s:HL('Keyword', s:palette.red, s:palette.none)
  call s:HL('Type', s:palette.blue, s:palette.none)
  call s:HL('Structure', s:palette.blue, s:palette.none)
  call s:HL('StorageClass', s:palette.blue, s:palette.none)
endif
call s:HL('Identifier', s:palette.orange, s:palette.none)
call s:HL('Constant', s:palette.orange, s:palette.none)
call s:HL('Define', s:palette.red, s:palette.none)
call s:HL('Typedef', s:palette.red, s:palette.none)
call s:HL('Exception', s:palette.red, s:palette.none)
call s:HL('Conditional', s:palette.red, s:palette.none)
call s:HL('Repeat', s:palette.red, s:palette.none)
call s:HL('Statement', s:palette.red, s:palette.none)
call s:HL('Macro', s:palette.purple, s:palette.none)
call s:HL('Error', s:palette.red, s:palette.none)
call s:HL('Label', s:palette.purple, s:palette.none)
call s:HL('Special', s:palette.purple, s:palette.none)
call s:HL('SpecialChar', s:palette.purple, s:palette.none)
call s:HL('Boolean', s:palette.purple, s:palette.none)
call s:HL('String', s:palette.yellow, s:palette.none)
call s:HL('Character', s:palette.yellow, s:palette.none)
call s:HL('Number', s:palette.purple, s:palette.none)
call s:HL('Float', s:palette.purple, s:palette.none)
call s:HL('Function', s:palette.green, s:palette.none)
call s:HL('Operator', s:palette.red, s:palette.none)
call s:HL('SpecialKey', s:palette.blue, s:palette.none)
call s:HL('Title', s:palette.red, s:palette.none, 'bold')
call s:HL('Tag', s:palette.orange, s:palette.none)
call s:HL('Delimiter', s:palette.grey, s:palette.none)
if s:configuration.disable_italic_comment
  call s:HL('Comment', s:palette.grey, s:palette.none)
  call s:HL('SpecialComment', s:palette.grey, s:palette.none)
  call s:HL('Todo', s:palette.blue, s:palette.none)
else
  call s:HL('Comment', s:palette.grey, s:palette.none, 'italic')
  call s:HL('SpecialComment', s:palette.grey, s:palette.none, 'italic')
  call s:HL('Todo', s:palette.blue, s:palette.none, 'italic')
endif
call s:HL('Ignore', s:palette.grey, s:palette.none)
call s:HL('Underlined', s:palette.none, s:palette.none, 'underline')
" }}}
" Predefined Highlight Groups: {{{
call s:HL('Fg', s:palette.fg, s:palette.none)
call s:HL('Grey', s:palette.grey, s:palette.none)
call s:HL('Red', s:palette.red, s:palette.none)
call s:HL('Orange', s:palette.orange, s:palette.none)
call s:HL('Yellow', s:palette.yellow, s:palette.none)
call s:HL('Green', s:palette.green, s:palette.none)
call s:HL('Blue', s:palette.blue, s:palette.none)
call s:HL('Purple', s:palette.purple, s:palette.none)
if s:configuration.enable_italic
  call s:HL('RedItalic', s:palette.red, s:palette.none, 'italic')
  call s:HL('BlueItalic', s:palette.blue, s:palette.none, 'italic')
else
  call s:HL('RedItalic', s:palette.red, s:palette.none)
  call s:HL('BlueItalic', s:palette.blue, s:palette.none)
endif
" }}}
" }}}
" Plugins: {{{
" junegunn/vim-plug{{{
call s:HL('plug1', s:palette.red, s:palette.none, 'bold')
call s:HL('plugNumber', s:palette.yellow, s:palette.none, 'bold')
highlight! link plug2 Blue
highlight! link plugBracket Blue
highlight! link plugName Green
highlight! link plugDash Red
highlight! link plugNotLoaded Grey
highlight! link plugH2 Purple
highlight! link plugMessage Purple
highlight! link plugError Red
highlight! link plugRelDate Grey
highlight! link plugStar Purple
highlight! link plugUpdate Blue
highlight! link plugDeleted Grey
highlight! link plugEdge Purple
" }}}
" neoclide/coc.nvim{{{
if s:configuration.current_word ==# 'bold'
  call s:HL('CocHighlightText', s:palette.none, s:palette.none, 'bold')
elseif s:configuration.current_word ==# 'underline'
  call s:HL('CocHighlightText', s:palette.none, s:palette.none, 'underline')
elseif s:configuration.current_word ==# 'italic'
  call s:HL('CocHighlightText', s:palette.none, s:palette.none, 'italic')
elseif s:configuration.current_word ==# 'grey background'
  call s:HL('CocHighlightText', s:palette.none, s:palette.bg1)
endif
call s:HL('CocHoverRange', s:palette.none, s:palette.none, 'bold,underline')
if s:configuration.transparent_background
  call s:HL('CocHintSign', s:palette.purple, s:palette.none)
else
  call s:HL('CocHintSign', s:palette.purple, s:palette.bg1)
endif
highlight! link CocCodeLens Grey
highlight! link CocErrorSign ALEErrorSign
highlight! link CocWarningSign ALEWarningSign
highlight! link CocInfoSign ALEInfoSign
highlight! link CocHintSign Label
highlight! link CocErrorHighlight ALEError
highlight! link CocWarningHighlight ALEWarning
highlight! link CocInfoHighlight ALEInfo
highlight! link CocWarningVirtualText ALEVirtualTextWarning
highlight! link CocErrorVirtualText ALEVirtualTextError
highlight! link CocInfoVirtualText ALEVirtualTextInfo
highlight! link CocHintVirtualText ALEVirtualTextInfo
highlight! link CocGitAddedSign GitGutterAdd
highlight! link CocGitChangeRemovedSign GitGutterChangeDelete
highlight! link CocGitChangedSign GitGutterChange
highlight! link CocGitRemovedSign GitGutterDelete
highlight! link CocGitTopRemovedSign GitGutterDelete
highlight! link CocExplorerBufferRoot Red
highlight! link CocExplorerBufferExpandIcon Blue
highlight! link CocExplorerBufferBufnr Yellow
highlight! link CocExplorerBufferModified Red
highlight! link CocExplorerBufferBufname Grey
highlight! link CocExplorerFileRoot Red
highlight! link CocExplorerFileExpandIcon Blue
highlight! link CocExplorerFileFullpath Grey
highlight! link CocExplorerFileDirectory Green
highlight! link CocExplorerFileGitStage Blue
highlight! link CocExplorerFileGitUnstage Yellow
highlight! link CocExplorerFileSize Blue
highlight! link CocExplorerTimeAccessed Purple
highlight! link CocExplorerTimeCreated Purple
highlight! link CocExplorerTimeModified Purple
highlight! link CocExplorerFileRootName Orange
highlight! link CocExplorerBufferNameVisible Green
" }}}
" dense-analysis/ale{{{
call s:HL('ALEError', s:palette.none, s:palette.none, 'undercurl', s:palette.red)
call s:HL('ALEWarning', s:palette.none, s:palette.none, 'undercurl', s:palette.yellow)
call s:HL('ALEInfo', s:palette.none, s:palette.none, 'undercurl', s:palette.blue)
if s:configuration.transparent_background
  call s:HL('ALEErrorSign', s:palette.red, s:palette.none)
  call s:HL('ALEWarningSign', s:palette.yellow, s:palette.none)
  call s:HL('ALEInfoSign', s:palette.blue, s:palette.none)
else
  call s:HL('ALEErrorSign', s:palette.red, s:palette.bg1)
  call s:HL('ALEWarningSign', s:palette.yellow, s:palette.bg1)
  call s:HL('ALEInfoSign', s:palette.blue, s:palette.bg1)
endif
highlight! link ALEVirtualTextError Grey
highlight! link ALEVirtualTextWarning Grey
highlight! link ALEVirtualTextInfo Grey
highlight! link ALEVirtualTextStyleError ALEVirtualTextError
highlight! link ALEVirtualTextStyleWarning ALEVirtualTextWarning
" }}}
" neomake/neomake{{{
highlight! link NeomakeError ALEError
highlight! link NeomakeErrorSign ALEErrorSign
highlight! link NeomakeWarning ALEWarning
highlight! link NeomakeWarningSign ALEWarningSign
highlight! link NeomakeInfo ALEInfo
highlight! link NeomakeInfoSign ALEInfoSign
highlight! link NeomakeMessage ALEInfo
highlight! link NeomakeMessageSign CocHintSign
highlight! link NeomakeVirtualtextError Grey
highlight! link NeomakeVirtualtextWarning Grey
highlight! link NeomakeVirtualtextInfo Grey
highlight! link NeomakeVirtualtextMessag Grey
" }}}
" vim-syntastic/syntastic{{{
highlight! link SyntasticError ALEError
highlight! link SyntasticWarning ALEWarning
highlight! link SyntasticErrorSign ALEErrorSign
highlight! link SyntasticWarningSign ALEWarningSign
" }}}
" Yggdroot/LeaderF{{{
if !exists('g:Lf_StlColorscheme')
  let g:Lf_StlColorscheme = 'one'
endif
call s:HL('Lf_hl_match', s:palette.green, s:palette.none, 'bold')
call s:HL('Lf_hl_match0', s:palette.green, s:palette.none, 'bold')
call s:HL('Lf_hl_match1', s:palette.blue, s:palette.none, 'bold')
call s:HL('Lf_hl_match2', s:palette.red, s:palette.none, 'bold')
call s:HL('Lf_hl_match3', s:palette.yellow, s:palette.none, 'bold')
call s:HL('Lf_hl_match4', s:palette.purple, s:palette.none, 'bold')
call s:HL('Lf_hl_matchRefine', s:palette.yellow, s:palette.none, 'bold')
highlight! link Lf_hl_cursorline Fg
highlight! link Lf_hl_selection DiffAdd
highlight! link Lf_hl_rgHighlight Visual
highlight! link Lf_hl_gtagsHighlight Visual
" }}}
" junegunn/fzf.vim{{{
let g:fzf_colors = {
      \ 'fg': ['fg', 'Normal'],
      \ 'bg': ['bg', 'Normal'],
      \ 'hl': ['fg', 'Green'],
      \ 'fg+': ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+': ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+': ['fg', 'Green'],
      \ 'info': ['fg', 'Yellow'],
      \ 'prompt': ['fg', 'Red'],
      \ 'pointer': ['fg', 'Blue'],
      \ 'marker': ['fg', 'Blue'],
      \ 'spinner': ['fg', 'Yellow'],
      \ 'header': ['fg', 'Blue']
      \ }
" }}}
" Shougo/denite.nvim{{{
call s:HL('deniteMatchedChar', s:palette.green, s:palette.none, 'bold')
call s:HL('deniteMatchedRange', s:palette.green, s:palette.none, 'bold,underline')
call s:HL('deniteInput', s:palette.green, s:palette.bg1, 'bold')
call s:HL('deniteStatusLineNumber', s:palette.purple, s:palette.bg1)
call s:HL('deniteStatusLinePath', s:palette.fg, s:palette.bg1)
highlight! link deniteSelectedLine Green
" }}}
" kien/ctrlp.vim{{{
call s:HL('CtrlPMatch', s:palette.green, s:palette.none, 'bold')
call s:HL('CtrlPPrtBase', s:palette.grey, s:palette.none)
call s:HL('CtrlPLinePre', s:palette.grey, s:palette.none)
call s:HL('CtrlPMode1', s:palette.blue, s:palette.bg1, 'bold')
call s:HL('CtrlPMode2', s:palette.bg1, s:palette.blue, 'bold')
call s:HL('CtrlPStats', s:palette.grey, s:palette.bg1, 'bold')
highlight! link CtrlPNoEntries Red
highlight! link CtrlPPrtCursor Blue
" }}}
" majutsushi/tagbar{{{
highlight! link TagbarFoldIcon Blue
highlight! link TagbarSignature Green
highlight! link TagbarKind Red
highlight! link TagbarScope Orange
highlight! link TagbarNestedKind Blue
highlight! link TagbarVisibilityPrivate Red
highlight! link TagbarVisibilityPublic Blue
" }}}
" liuchengxu/vista.vim{{{
highlight! link VistaBracket Grey
highlight! link VistaChildrenNr Yellow
highlight! link VistaScope Red
highlight! link VistaTag Green
highlight! link VistaPrefix Grey
highlight! link VistaColon Green
highlight! link VistaIcon Purple
highlight! link VistaLineNr Fg
" }}}
" airblade/vim-gitgutter{{{
if s:configuration.transparent_background
  call s:HL('GitGutterAdd', s:palette.green, s:palette.none)
  call s:HL('GitGutterChange', s:palette.blue, s:palette.none)
  call s:HL('GitGutterDelete', s:palette.red, s:palette.none)
  call s:HL('GitGutterChangeDelete', s:palette.purple, s:palette.none)
else
  call s:HL('GitGutterAdd', s:palette.green, s:palette.bg1)
  call s:HL('GitGutterChange', s:palette.blue, s:palette.bg1)
  call s:HL('GitGutterDelete', s:palette.red, s:palette.bg1)
  call s:HL('GitGutterChangeDelete', s:palette.purple, s:palette.bg1)
endif
" }}}
" mhinz/vim-signify{{{
highlight! link SignifySignAdd GitGutterAdd
highlight! link SignifySignChange GitGutterChange
highlight! link SignifySignDelete GitGutterDelete
highlight! link SignifySignChangeDelete GitGutterChangeDelete
" }}}
" scrooloose/nerdtree{{{
highlight! link NERDTreeDir Green
highlight! link NERDTreeDirSlash Green
highlight! link NERDTreeOpenable Blue
highlight! link NERDTreeClosable Blue
highlight! link NERDTreeFile Fg
highlight! link NERDTreeExecFile Red
highlight! link NERDTreeUp Grey
highlight! link NERDTreeCWD Purple
highlight! link NERDTreeHelp Grey
highlight! link NERDTreeToggleOn Green
highlight! link NERDTreeToggleOff Red
highlight! link NERDTreeFlags Blue
highlight! link NERDTreeLinkFile Grey
highlight! link NERDTreeLinkTarget Green
" }}}
" justinmk/vim-dirvish{{{
highlight! link DirvishPathTail Blue
highlight! link DirvishArg Yellow
" }}}
" vim.org/netrw {{{
" https://www.vim.org/scripts/script.php?script_id=1075
highlight! link netrwDir Green
highlight! link netrwClassify Green
highlight! link netrwLink Grey
highlight! link netrwSymLink Fg
highlight! link netrwExe Red
highlight! link netrwComment Grey
highlight! link netrwList Yellow
highlight! link netrwHelpCmd Blue
highlight! link netrwCmdSep Grey
highlight! link netrwVersion Purple
" }}}
" andymass/vim-matchup{{{
call s:HL('MatchParenCur', s:palette.none, s:palette.none, 'bold')
call s:HL('MatchWord', s:palette.none, s:palette.none, 'underline')
call s:HL('MatchWordCur', s:palette.none, s:palette.none, 'underline')
" }}}
" easymotion/vim-easymotion {{{
highlight! link EasyMotionTarget Search
highlight! link EasyMotionShade Grey
" }}}
" justinmk/vim-sneak {{{
highlight! link Sneak Cursor
highlight! link SneakLabel Cursor
highlight! link SneakScope DiffAdd
" }}}
" terryma/vim-multiple-cursors{{{
highlight! link multiple_cursors_cursor Cursor
highlight! link multiple_cursors_visual Visual
" }}}
" mg979/vim-visual-multi{{{
let g:VM_Mono_hl = 'Cursor'
let g:VM_Extend_hl = 'Visual'
let g:VM_Cursor_hl = 'Cursor'
let g:VM_Insert_hl = 'Cursor'
" }}}
" dominikduda/vim_current_word{{{
highlight! link CurrentWord CocHighlightText
highlight! link CurrentWordTwins CocHighlightText
" }}}
" RRethy/vim-illuminate{{{
highlight! link illuminatedWord CocHighlightText
" }}}
" itchyny/vim-cursorword{{{
highlight! link CursorWord0 CocHighlightText
highlight! link CursorWord1 CocHighlightText
" }}}
" nathanaelkane/vim-indent-guides{{{
if get(g:, 'indent_guides_auto_colors', 1) == 0
  call s:HL('IndentGuidesOdd', s:palette.bg0, s:palette.bg1)
  call s:HL('IndentGuidesEven', s:palette.bg0, s:palette.bg2)
endif
" }}}
" kshenoy/vim-signature {{{
if s:configuration.transparent_background
  call s:HL('SignatureMarkText', s:palette.blue, s:palette.none)
  call s:HL('SignatureMarkerText', s:palette.red, s:palette.none)
else
  call s:HL('SignatureMarkText', s:palette.blue, s:palette.bg1)
  call s:HL('SignatureMarkerText', s:palette.red, s:palette.bg1)
endif
" }}}
" mhinz/vim-startify{{{
highlight! link StartifyBracket Grey
highlight! link StartifyFile Green
highlight! link StartifyNumber Orange
highlight! link StartifyPath Grey
highlight! link StartifySlash Grey
highlight! link StartifySection Blue
highlight! link StartifyHeader Red
highlight! link StartifySpecial Grey
" }}}
" ap/vim-buftabline{{{
highlight! link BufTabLineCurrent TabLineSel
highlight! link BufTabLineActive TabLine
highlight! link BufTabLineHidden TabLineFill
highlight! link BufTabLineFill TabLineFill
" }}}
" liuchengxu/vim-which-key{{{
highlight! link WhichKey Red
highlight! link WhichKeySeperator Green
highlight! link WhichKeyGroup Orange
highlight! link WhichKeyDesc Blue
" }}}
" skywind3000/quickmenu.vim{{{
highlight! link QuickmenuOption Green
highlight! link QuickmenuNumber Orange
highlight! link QuickmenuBracket Grey
highlight! link QuickmenuHelp Blue
highlight! link QuickmenuSpecial Grey
highlight! link QuickmenuHeader Purple
" }}}
" mbbill/undotree{{{
call s:HL('UndotreeSavedBig', s:palette.red, s:palette.none, 'bold')
highlight! link UndotreeNode Blue
highlight! link UndotreeNodeCurrent Purple
highlight! link UndotreeSeq Green
highlight! link UndotreeCurrent Blue
highlight! link UndotreeNext Yellow
highlight! link UndotreeTimeStamp Grey
highlight! link UndotreeHead Purple
highlight! link UndotreeBranch Blue
highlight! link UndotreeSavedSmall Red
" }}}
" unblevable/quick-scope {{{
call s:HL('QuickScopePrimary', s:palette.green, s:palette.none, 'underline')
call s:HL('QuickScopeSecondary', s:palette.blue, s:palette.none, 'underline')
" }}}
" }}}
" Terminal: {{{
if (has('termguicolors') && &termguicolors) || has('gui_running')
  " Definition
  let s:terminal = {
        \ 'black':    s:palette.fg,
        \ 'red':      s:palette.red,
        \ 'yellow':   s:palette.yellow,
        \ 'green':    s:palette.green,
        \ 'cyan':     s:palette.orange,
        \ 'blue':     s:palette.blue,
        \ 'purple':   s:palette.purple,
        \ 'white':    s:palette.grey
        \ }
  " Implementation: {{{
  if !has('nvim')
    let g:terminal_ansi_colors = [s:terminal.black[0], s:terminal.red[0], s:terminal.green[0], s:terminal.yellow[0],
          \ s:terminal.blue[0], s:terminal.purple[0], s:terminal.cyan[0], s:terminal.white[0], s:terminal.black[0], s:terminal.red[0],
          \ s:terminal.green[0], s:terminal.yellow[0], s:terminal.blue[0], s:terminal.purple[0], s:terminal.cyan[0], s:terminal.white[0]]
  else
    let g:terminal_color_0 = s:terminal.black[0]
    let g:terminal_color_1 = s:terminal.red[0]
    let g:terminal_color_2 = s:terminal.green[0]
    let g:terminal_color_3 = s:terminal.yellow[0]
    let g:terminal_color_4 = s:terminal.blue[0]
    let g:terminal_color_5 = s:terminal.purple[0]
    let g:terminal_color_6 = s:terminal.cyan[0]
    let g:terminal_color_7 = s:terminal.white[0]
    let g:terminal_color_8 = s:terminal.black[0]
    let g:terminal_color_9 = s:terminal.red[0]
    let g:terminal_color_10 = s:terminal.green[0]
    let g:terminal_color_11 = s:terminal.yellow[0]
    let g:terminal_color_12 = s:terminal.blue[0]
    let g:terminal_color_13 = s:terminal.purple[0]
    let g:terminal_color_14 = s:terminal.cyan[0]
    let g:terminal_color_15 = s:terminal.white[0]
  endif
  " }}}
endif
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
