" =============================================================================
" URL: https://github.com/sainnhe/sonokai/
" Filename: autoload/airline/themes/sonokai.vim
" Author: Sainnhepark
" Email: sainnhe@gmail.com
" License: MIT License
" =============================================================================

"{{{Palette
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

if get(g:, 'sonokai_style', 'default') ==# 'default'
    if &background ==# 'dark'
        let s:foreground = [ '#c5cdd9', 250 ]
        let s:background = [ '#2c2e34', 235 ]
        let s:background_alt = [ '#30323a', 236 ]
        let s:background_grey = [ '#414550', 238 ]
        let s:red_sel = [ '#f27a7a', 203 ]
        let s:purple_sel = [ '#d798e9', 176 ]
        let s:green_sel = [ '#a0c582', 107 ]
        let s:blue_sel = [ '#75b8eb', 110 ]
        let s:red_fg = [ '#f27a7a', 203 ]
        let s:purple_fg = [ '#d798e9', 176 ]
        let s:green_fg = [ '#a0c582', 107 ]
        let s:blue_fg = [ '#75b8eb', 110 ]
    else
        let s:foreground = [ '#4b505b', 241 ]
        let s:background = [ '#fafafa', 231 ]
        let s:background_alt = [ '#eef1f4', 255 ]
        let s:background_grey = [ '#dde2e7', 253 ]
        let s:red_sel = [ '#e17373', 167 ]
        let s:purple_sel = [ '#bf75d6', 134 ]
        let s:green_sel = [ '#76af6f', 107 ]
        let s:blue_sel = [ '#6996e0', 68 ]
        let s:red_fg = [ '#d15f5f', 167 ]
        let s:purple_fg = [ '#b05ccc', 134 ]
        let s:green_fg = [ '#608e32', 107 ]
        let s:blue_fg = [ '#5079be', 68 ]
    endif
elseif get(g:, 'sonokai_style', 'default') ==# 'proton'
    if &background ==# 'dark'
        let s:foreground = [ '#c5cdd9', 250 ]
        let s:background = [ '#2b2d37', 235 ]
        let s:background_alt = [ '#2f323e', 236 ]
        let s:background_grey = [ '#404455', 238 ]
        let s:red_sel = [ '#f27a7a', 203 ]
        let s:purple_sel = [ '#d798e9', 176 ]
        let s:green_sel = [ '#a0c582', 107 ]
        let s:blue_sel = [ '#75b8eb', 110 ]
        let s:red_fg = [ '#f27a7a', 203 ]
        let s:purple_fg = [ '#d798e9', 176 ]
        let s:green_fg = [ '#a0c582', 107 ]
        let s:blue_fg = [ '#75b8eb', 110 ]
    else
        let s:foreground = [ '#4b505b', 241 ]
        let s:background = [ '#fafafa', 231 ]
        let s:background_alt = [ '#eef2f6', 255 ]
        let s:background_grey = [ '#dde4ea', 253 ]
        let s:red_sel = [ '#e17373', 167 ]
        let s:purple_sel = [ '#bf75d6', 134 ]
        let s:green_sel = [ '#76af6f', 107 ]
        let s:blue_sel = [ '#6996e0', 68 ]
        let s:red_fg = [ '#d15f5f', 167 ]
        let s:purple_fg = [ '#b05ccc', 134 ]
        let s:green_fg = [ '#608e32', 107 ]
        let s:blue_fg = [ '#5079be', 68 ]
    endif
elseif get(g:, 'sonokai_style', 'default') ==# 'neon'
    if &background ==# 'dark'
        let s:foreground = [ '#c5cdd9', 250 ]
        let s:background = [ '#2b2d3a', 235 ]
        let s:background_alt = [ '#2f3242', 236 ]
        let s:background_grey = [ '#3f445b', 238 ]
        let s:red_sel = [ '#f27a7a', 203 ]
        let s:purple_sel = [ '#d798e9', 176 ]
        let s:green_sel = [ '#a0c582', 107 ]
        let s:blue_sel = [ '#75b8eb', 110 ]
        let s:red_fg = [ '#f27a7a', 203 ]
        let s:purple_fg = [ '#d798e9', 176 ]
        let s:green_fg = [ '#a0c582', 107 ]
        let s:blue_fg = [ '#75b8eb', 110 ]
    else
        let s:foreground = [ '#4b505b', 241 ]
        let s:background = [ '#fafafa', 231 ]
        let s:background_alt = [ '#eef2f6', 255 ]
        let s:background_grey = [ '#dde4ea', 253 ]
        let s:red_sel = [ '#e17373', 167 ]
        let s:purple_sel = [ '#bf75d6', 134 ]
        let s:green_sel = [ '#76af6f', 107 ]
        let s:blue_sel = [ '#6996e0', 68 ]
        let s:red_fg = [ '#d15f5f', 167 ]
        let s:purple_fg = [ '#b05ccc', 134 ]
        let s:green_fg = [ '#608e32', 107 ]
        let s:blue_fg = [ '#5079be', 68 ]
    endif
endif
"}}}

"{{{Definition
let s:accents = s:red_fg

let s:normal_side_fg = s:background
let s:normal_side_bg = s:purple_sel
let s:normal_sub_fg = s:foreground
let s:normal_sub_bg = s:background_grey
let s:normal_mid_fg = s:foreground
let s:normal_mid_bg = s:background_alt
let s:normal_mod_fg = s:purple_fg
let s:normal_mod_bg = s:background_alt

let s:insert_side_fg = s:background
let s:insert_side_bg = s:blue_sel
let s:insert_sub_fg = s:foreground
let s:insert_sub_bg = s:background_grey
let s:insert_mid_fg = s:foreground
let s:insert_mid_bg = s:background_alt
let s:insert_mod_fg = s:blue_fg
let s:insert_mod_bg = s:background_alt

let s:visual_side_fg = s:background
let s:visual_side_bg = s:red_sel
let s:visual_sub_fg = s:foreground
let s:visual_sub_bg = s:background_grey
let s:visual_mid_fg = s:foreground
let s:visual_mid_bg = s:background_alt
let s:visual_mod_fg = s:red_fg
let s:visual_mod_bg = s:background_alt

let s:replace_side_fg = s:background
let s:replace_side_bg = s:green_sel
let s:replace_sub_fg = s:foreground
let s:replace_sub_bg = s:background_grey
let s:replace_mid_fg = s:foreground
let s:replace_mid_bg = s:background_alt
let s:replace_mod_fg = s:green_fg
let s:replace_mod_bg = s:background_alt

let s:inactive_side_fg = s:background
let s:inactive_side_bg = s:background_grey
let s:inactive_sub_fg = s:foreground
let s:inactive_sub_bg = s:background_grey
let s:inactive_mid_fg = s:foreground
let s:inactive_mid_bg = s:background_alt
let s:inactive_mod_fg = s:foreground
let s:inactive_mod_bg = s:background_alt
"}}}

"{{{Implementation
let g:airline#themes#sonokai#palette = {}
let g:airline#themes#sonokai#palette.accents = {
            \ 'red': [ s:accents[0] , '' , s:accents[1] , '' , '' ],
            \ }

" Normal mode
let s:N1 = [ s:normal_side_fg[0] , s:normal_side_bg[0] , s:normal_side_fg[1] , s:normal_side_bg[1] ]
let s:N2 = [ s:normal_sub_fg[0] , s:normal_sub_bg[0] , s:normal_sub_fg[1] , s:normal_sub_bg[1] ]
let s:N3 = [ s:normal_mid_fg[0] , s:normal_mid_bg[0] , s:normal_mid_fg[1] , s:normal_mid_bg[1] ]

let g:airline#themes#sonokai#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#sonokai#palette.normal_modified = {
            \ 'airline_c': [ s:normal_mod_fg[0] , s:normal_mod_bg[0] , s:normal_mod_fg[1] , s:normal_mod_bg[1] ] ,
            \ }

" Insert mode
let s:I1 = [ s:insert_side_fg[0] , s:insert_side_bg[0] , s:insert_side_fg[1] , s:insert_side_bg[1] ]
let s:I2 = [ s:insert_sub_fg[0] , s:insert_sub_bg[0] , s:insert_sub_fg[1] , s:insert_sub_bg[1] ]
let s:I3 = [ s:insert_mid_fg[0] , s:insert_mid_bg[0] , s:insert_mid_fg[1] , s:insert_mid_bg[1] ]

let g:airline#themes#sonokai#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#sonokai#palette.insert_modified = {
            \ 'airline_c': [ s:insert_mod_fg[0] , s:insert_mod_bg[0] , s:insert_mod_fg[1] , s:insert_mod_bg[1] ] ,
            \ }

" Replace mode
let s:R1 = [ s:replace_side_fg[0] , s:replace_side_bg[0] , s:replace_side_fg[1] , s:replace_side_bg[1] ]
let s:R2 = [ s:replace_sub_fg[0] , s:replace_sub_bg[0] , s:replace_sub_fg[1] , s:replace_sub_bg[1] ]
let s:R3 = [ s:replace_mid_fg[0] , s:replace_mid_bg[0] , s:replace_mid_fg[1] , s:replace_mid_bg[1] ]

let g:airline#themes#sonokai#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#sonokai#palette.replace_modified = {
            \ 'airline_c': [ s:replace_mod_fg[0] , s:replace_mod_bg[0] , s:replace_mod_fg[1] , s:replace_mod_bg[1] ] ,
            \ }

" Visual mode
let s:V1 = [ s:visual_side_fg[0] , s:visual_side_bg[0] , s:visual_side_fg[1] , s:visual_side_bg[1] ]
let s:V2 = [ s:visual_sub_fg[0] , s:visual_sub_bg[0] , s:visual_sub_fg[1] , s:visual_sub_bg[1] ]
let s:V3 = [ s:visual_mid_fg[0] , s:visual_mid_bg[0] , s:visual_mid_fg[1] , s:visual_mid_bg[1] ]

let g:airline#themes#sonokai#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#sonokai#palette.visual_modified = {
            \ 'airline_c': [ s:visual_mod_fg[0] , s:visual_mod_bg[0] , s:visual_mod_fg[1] , s:visual_mod_bg[1] ] ,
            \ }

" Inactive
let s:IA1 = [ s:inactive_side_fg[0] , s:inactive_side_bg[0] , s:inactive_side_fg[1] , s:inactive_side_bg[1] ]
let s:IA2 = [ s:inactive_sub_fg[0] , s:inactive_sub_bg[0] , s:inactive_sub_fg[1] , s:inactive_sub_bg[1] ]
let s:IA3 = [ s:inactive_mid_fg[0] , s:inactive_mid_bg[0] , s:inactive_mid_fg[1] , s:inactive_mid_bg[1] ]

let g:airline#themes#sonokai#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#sonokai#palette.inactive_modified = {
            \ 'airline_c': [ s:inactive_mod_fg[0] , s:inactive_mod_bg[0] , s:inactive_mod_fg[1] , s:inactive_mod_bg[1] ] ,
            \ }
"}}}

