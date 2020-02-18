" =============================================================================
" URL: https://github.com/sainnhe/sonokai/
" Filename: autoload/lightline/colorscheme/sonokai.vim
" Author: Sainnhepark
" Email: sainnhe@gmail.com
" License: MIT License
" =============================================================================

"{{{Palette
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:style = get(g:, 'sonokai_style', 'shusia')

if s:style ==# 'shusia'
    let s:foreground = [ '#e3e1e4', 250 ]
    let s:background = [ '#2d2a2e', 235 ]
    let s:background_alt = [ '#343136', 236 ]
    let s:background_grey = [ '#49464e', 238 ]
    let s:red = [ '#ff6188', 203 ]
    let s:yellow = [ '#ffd866', 179 ]
    let s:green = [ '#a9dc76', 107 ]
    let s:blue = [ '#78dce8', 110 ]
    let s:purple = [ '#ab9df2', 176 ]
elseif s:style ==# 'andromeda'
    let s:foreground = [ '#e1e3e4', 250 ]
    let s:background = [ '#2b2d37', 235 ]
    let s:background_alt = [ '#2f323e', 236 ]
    let s:background_grey = [ '#404455', 238 ]
    let s:red = [ '#ff6188', 203 ]
    let s:yellow = [ '#ffd866', 179 ]
    let s:green = [ '#a9dc76', 107 ]
    let s:blue = [ '#77d5f0', 110 ]
    let s:purple = [ '#bb97ee', 176 ]
elseif s:style ==# 'atlantis'
    let s:foreground = [ '#e1e3e4', 250 ]
    let s:background = [ '#2a2f38', 235 ]
    let s:background_alt = [ '#303541', 236 ]
    let s:background_grey = [ '#424b5b', 238 ]
    let s:red = [ '#ff6d7e', 203 ]
    let s:yellow = [ '#fade6a', 179 ]
    let s:green = [ '#a5e179', 107 ]
    let s:blue = [ '#7ad5f1', 110 ]
    let s:purple = [ '#ba9cf3', 176 ]
elseif s:style ==# 'maia'
    let s:foreground = [ '#e1e2e3', 250 ]
    let s:background = [ '#273136', 235 ]
    let s:background_alt = [ '#2e383e', 236 ]
    let s:background_grey = [ '#414b53', 238 ]
    let s:red = [ '#ff6d7e', 203 ]
    let s:yellow = [ '#f5e46d', 179 ]
    let s:green = [ '#a2e57b', 107 ]
    let s:blue = [ '#7cd5f1', 110 ]
    let s:purple = [ '#baa0f8', 176 ]
endif
"}}}

"{{{Definition
let s:tab_l_fg = s:foreground
let s:tab_l_bg = s:background_grey
let s:tab_r_fg = s:red
let s:tab_r_bg = s:background_grey
let s:tab_sel_fg = s:background
let s:tab_sel_bg = s:red
let s:tab_middle_fg = s:foreground
let s:tab_middle_bg = s:background_alt

let s:warningfg = s:background
let s:warningbg = s:yellow
let s:errorfg = s:background
let s:errorbg = s:red

let s:normal_l1_fg = s:background
let s:normal_l1_bg = s:blue
let s:normal_l2_fg = s:foreground
let s:normal_l2_bg = s:background_grey
let s:normal_r1_fg = s:background
let s:normal_r1_bg = s:blue
let s:normal_r2_fg = s:foreground
let s:normal_r2_bg = s:background_grey
let s:normal_middle_fg = s:foreground
let s:normal_middle_bg = s:background_alt

let s:insert_l1_fg = s:background
let s:insert_l1_bg = s:green
let s:insert_l2_fg = s:foreground
let s:insert_l2_bg = s:background_grey
let s:insert_r1_fg = s:background
let s:insert_r1_bg = s:green
let s:insert_r2_fg = s:foreground
let s:insert_r2_bg = s:background_grey
let s:insert_middle_fg = s:foreground
let s:insert_middle_bg = s:background_alt

let s:visual_l1_fg = s:background
let s:visual_l1_bg = s:purple
let s:visual_l2_fg = s:foreground
let s:visual_l2_bg = s:background_grey
let s:visual_r1_fg = s:background
let s:visual_r1_bg = s:purple
let s:visual_r2_fg = s:foreground
let s:visual_r2_bg = s:background_grey
let s:visual_middle_fg = s:foreground
let s:visual_middle_bg = s:background_alt

let s:replace_l1_fg = s:background
let s:replace_l1_bg = s:yellow
let s:replace_l2_fg = s:foreground
let s:replace_l2_bg = s:background_grey
let s:replace_r1_fg = s:background
let s:replace_r1_bg = s:yellow
let s:replace_r2_fg = s:foreground
let s:replace_r2_bg = s:background_grey
let s:replace_middle_fg = s:foreground
let s:replace_middle_bg = s:background_alt

let s:inactive_l1_fg = s:foreground
let s:inactive_l1_bg = s:background_grey
let s:inactive_l2_fg = s:foreground
let s:inactive_l2_bg = s:background_grey
let s:inactive_r1_fg = s:foreground
let s:inactive_r1_bg = s:background_grey
let s:inactive_r2_fg = s:foreground
let s:inactive_r2_bg = s:background_grey
let s:inactive_middle_fg = s:foreground
let s:inactive_middle_bg = s:background_alt

"}}}

"{{{Implementation
let s:p.normal.middle = [ [ s:normal_middle_fg, s:normal_middle_bg ] ]
let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg, 'bold' ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg, 'bold' ], [ s:normal_r2_fg, s:normal_r2_bg ] ]

let s:p.insert.middle = [ [ s:insert_middle_fg, s:insert_middle_bg ] ]
let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg, 'bold' ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg, 'bold' ], [ s:insert_r2_fg, s:insert_r2_bg ] ]

let s:p.visual.middle = [ [ s:visual_middle_fg, s:visual_middle_bg ] ]
let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg, 'bold' ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg, 'bold' ], [ s:visual_r2_fg, s:visual_r2_bg ] ]

let s:p.replace.middle = [ [ s:replace_middle_fg, s:replace_middle_bg ] ]
let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg, 'bold' ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg, 'bold' ], [ s:replace_r2_fg, s:replace_r2_bg ] ]

let s:p.inactive.left = [ [ s:inactive_l1_fg, s:inactive_l1_bg ], [ s:inactive_l2_fg, s:inactive_l2_bg ] ]
let s:p.inactive.middle = [ [ s:inactive_middle_fg, s:inactive_middle_bg ] ]
let s:p.inactive.right = [ [ s:inactive_r1_fg, s:inactive_r1_bg ], [ s:inactive_r2_fg, s:inactive_r2_bg ] ]

let s:p.tabline.left = [ [ s:tab_l_fg, s:tab_l_bg] ]
let s:p.tabline.right = [ [ s:tab_r_fg, s:tab_r_bg] ]
let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg, 'bold' ] ]
let s:p.tabline.middle = [ [ s:tab_middle_fg, s:tab_middle_bg] ]

let s:p.normal.error = [ [ s:errorfg, s:errorbg ] ]
let s:p.normal.warning = [ [ s:warningfg, s:warningbg ] ]


if get(g:, 'sonokai_lightline_disable_bold', 0)
    let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
    let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg ], [ s:normal_r2_fg, s:normal_r2_bg ] ]
    let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
    let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg ], [ s:insert_r2_fg, s:insert_r2_bg ] ]
    let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
    let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg ], [ s:visual_r2_fg, s:visual_r2_bg ] ]
    let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
    let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg ], [ s:replace_r2_fg, s:replace_r2_bg ] ]
    let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg ] ]
endif
"}}}

let g:lightline#colorscheme#sonokai#palette = lightline#colorscheme#flatten(s:p)
