" =============================================================================
" URL: https://github.com/sainnhe/sonokai/
" Filename: autoload/lightline/colorscheme/sonokai.vim
" Author: Sainnhepark
" Email: sainnhe@gmail.com
" License: MIT License
" =============================================================================

"{{{Palette
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

if get(g:, 'sonokai_style', 'default') ==# 'default'
    if &background ==# 'dark'
        let s:foreground = [ '#dad7db', 250 ]
        let s:background = [ '#2d2a2e', 235 ]
        let s:background_alt = [ '#353236', 236 ]
        let s:background_grey = [ '#474448', 238 ]
        let s:red = [ '#f55d83', 203 ]
        let s:purple = [ '#f55d83', 176 ]
        let s:yellow = [ '#e2c262', 179 ]
        let s:green = [ '#9eca72', 107 ]
        let s:blue = [ '#71c5cf', 110 ]
    else
        let s:foreground = [ '#4b505b', 241 ]
        let s:background = [ '#fafafa', 231 ]
        let s:background_alt = [ '#eef1f4', 255 ]
        let s:background_grey = [ '#dde2e7', 253 ]
        let s:red = [ '#e17373', 167 ]
        let s:purple = [ '#bf75d6', 134 ]
        let s:yellow = [ '#e0ac48', 172 ]
        let s:green = [ '#76af6f', 107 ]
        let s:blue = [ '#6996e0', 68 ]
    endif
elseif get(g:, 'sonokai_style', 'default') ==# 'proton'
    if &background ==# 'dark'
        let s:foreground = [ '#c5cdd9', 250 ]
        let s:background = [ '#2b2d37', 235 ]
        let s:background_alt = [ '#2f323e', 236 ]
        let s:background_grey = [ '#404455', 238 ]
        let s:red = [ '#f27a7a', 203 ]
        let s:purple = [ '#d798e9', 176 ]
        let s:yellow = [ '#d9b575', 179 ]
        let s:green = [ '#a0c582', 107 ]
        let s:blue = [ '#75b8eb', 110 ]
    else
        let s:foreground = [ '#4b505b', 241 ]
        let s:background = [ '#fafafa', 231 ]
        let s:background_alt = [ '#eef2f6', 255 ]
        let s:background_grey = [ '#dde4ea', 253 ]
        let s:red = [ '#e17373', 167 ]
        let s:purple = [ '#bf75d6', 134 ]
        let s:yellow = [ '#e0ac48', 172 ]
        let s:green = [ '#76af6f', 107 ]
        let s:blue = [ '#6996e0', 68 ]
    endif
elseif get(g:, 'sonokai_style', 'default') ==# 'neon'
    if &background ==# 'dark'
        let s:foreground = [ '#c5cdd9', 250 ]
        let s:background = [ '#2b2d3a', 235 ]
        let s:background_alt = [ '#2f3242', 236 ]
        let s:background_grey = [ '#3f445b', 238 ]
        let s:red = [ '#f27a7a', 203 ]
        let s:purple = [ '#d798e9', 176 ]
        let s:yellow = [ '#d9b575', 179 ]
        let s:green = [ '#a0c582', 107 ]
        let s:blue = [ '#75b8eb', 110 ]
    else
        let s:foreground = [ '#4b505b', 241 ]
        let s:background = [ '#fafafa', 231 ]
        let s:background_alt = [ '#eef2f6', 255 ]
        let s:background_grey = [ '#dde4ea', 253 ]
        let s:red = [ '#e17373', 167 ]
        let s:purple = [ '#bf75d6', 134 ]
        let s:yellow = [ '#e0ac48', 172 ]
        let s:green = [ '#76af6f', 107 ]
        let s:blue = [ '#6996e0', 68 ]
    endif
endif
"}}}

"{{{Definition
let s:tab_l_fg = s:foreground
let s:tab_l_bg = s:background_grey
let s:tab_r_fg = s:red
let s:tab_r_bg = s:background_grey
let s:tab_sel_fg = s:background
let s:tab_sel_bg = s:purple
let s:tab_middle_fg = s:foreground
let s:tab_middle_bg = s:background_alt

let s:warningfg = s:background
let s:warningbg = s:yellow
let s:errorfg = s:background
let s:errorbg = s:red

let s:normal_l1_fg = s:background
let s:normal_l1_bg = s:green
let s:normal_l2_fg = s:foreground
let s:normal_l2_bg = s:background_grey
let s:normal_r1_fg = s:background
let s:normal_r1_bg = s:green
let s:normal_r2_fg = s:foreground
let s:normal_r2_bg = s:background_grey
let s:normal_middle_fg = s:foreground
let s:normal_middle_bg = s:background_alt

let s:insert_l1_fg = s:background
let s:insert_l1_bg = s:blue
let s:insert_l2_fg = s:foreground
let s:insert_l2_bg = s:background_grey
let s:insert_r1_fg = s:background
let s:insert_r1_bg = s:blue
let s:insert_r2_fg = s:foreground
let s:insert_r2_bg = s:background_grey
let s:insert_middle_fg = s:foreground
let s:insert_middle_bg = s:background_alt

let s:visual_l1_fg = s:background
let s:visual_l1_bg = s:red
let s:visual_l2_fg = s:foreground
let s:visual_l2_bg = s:background_grey
let s:visual_r1_fg = s:background
let s:visual_r1_bg = s:red
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
