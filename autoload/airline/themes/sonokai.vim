" =============================================================================
" URL: https://github.com/sainnhe/sonokai/
" Filename: autoload/airline/themes/sonokai.vim
" Author: Sainnhepark
" Email: sainnhe@gmail.com
" License: MIT License
" =============================================================================

"{{{Palette
let s:style = get(g:, 'sonokai_style', 'shusia')

if s:style ==# 'shusia'
    let s:foreground = [ '#e3e1e4', 250 ]
    let s:background = [ '#2d2a2e', 235 ]
    let s:background_alt = [ '#343136', 236 ]
    let s:background_grey = [ '#49464e', 238 ]
    let s:red_sel = [ '#ff6188', 203 ]
    let s:green_sel = [ '#a9dc76', 107 ]
    let s:blue_sel = [ '#78dce8', 110 ]
    let s:purple_sel = [ '#ab9df2', 176 ]
    let s:red_fg = [ '#f85e84', 203 ]
    let s:green_fg = [ '#9ecd6f', 107 ]
    let s:blue_fg = [ '#7accd7', 110 ]
    let s:purple_fg = [ '#ab9df2', 176 ]
elseif s:style ==# 'andromeda'
    let s:foreground = [ '#e1e3e4', 250 ]
    let s:background = [ '#2b2d37', 235 ]
    let s:background_alt = [ '#2f323e', 236 ]
    let s:background_grey = [ '#404455', 238 ]
    let s:red_sel = [ '#ff6188', 203 ]
    let s:green_sel = [ '#a9dc76', 107 ]
    let s:blue_sel = [ '#77d5f0', 110 ]
    let s:purple_sel = [ '#bb97ee', 176 ]
    let s:red_fg = [ '#fb617e', 203 ]
    let s:green_fg = [ '#9ed06c', 107 ]
    let s:blue_fg = [ '#6dcae8', 110 ]
    let s:purple_fg = [ '#bb97ee', 176 ]
elseif s:style ==# 'atlantis'
    let s:foreground = [ '#e1e3e4', 250 ]
    let s:background = [ '#2a2f38', 235 ]
    let s:background_alt = [ '#303541', 236 ]
    let s:background_grey = [ '#424b5b', 238 ]
    let s:red_sel = [ '#ff6d7e', 203 ]
    let s:green_sel = [ '#a5e179', 107 ]
    let s:blue_sel = [ '#7ad5f1', 110 ]
    let s:purple_sel = [ '#ba9cf3', 176 ]
    let s:red_fg = [ '#ff6578', 203 ]
    let s:green_fg = [ '#9dd274', 107 ]
    let s:blue_fg = [ '#72cce8', 110 ]
    let s:purple_fg = [ '#ba9cf3', 176 ]
elseif s:style ==# 'maia'
    let s:foreground = [ '#e1e2e3', 250 ]
    let s:background = [ '#273136', 235 ]
    let s:background_alt = [ '#2e383e', 236 ]
    let s:background_grey = [ '#414b53', 238 ]
    let s:red_sel = [ '#ff6d7e', 203 ]
    let s:green_sel = [ '#a2e57b', 107 ]
    let s:blue_sel = [ '#7cd5f1', 110 ]
    let s:purple_sel = [ '#baa0f8', 176 ]
    let s:red_fg = [ '#f76c7c', 203 ]
    let s:green_fg = [ '#9cd57b', 107 ]
    let s:blue_fg = [ '#78cee9', 110 ]
    let s:purple_fg = [ '#baa0f8', 176 ]
endif
"}}}

"{{{Definition
let s:accents = s:red_fg

let s:normal_side_fg = s:background
let s:normal_side_bg = s:red_sel
let s:normal_sub_fg = s:foreground
let s:normal_sub_bg = s:background_grey
let s:normal_mid_fg = s:foreground
let s:normal_mid_bg = s:background_alt
let s:normal_mod_fg = s:red_fg
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
let s:visual_side_bg = s:purple_sel
let s:visual_sub_fg = s:foreground
let s:visual_sub_bg = s:background_grey
let s:visual_mid_fg = s:foreground
let s:visual_mid_bg = s:background_alt
let s:visual_mod_fg = s:purple_fg
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

