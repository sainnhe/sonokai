-- =============================================================================
-- URL: https://github.com/sainnhe/sonokai
-- Filename: lua/lualine/themes/sonokai.lua
-- Author: sainnhe
-- Email: i@sainnhe.dev
-- License: MIT License
-- =============================================================================

local configuration = vim.fn['sonokai#get_configuration']()
local palette = vim.fn['sonokai#get_palette'](configuration.style, configuration.colors_override)

if configuration.transparent_background == 2 then
  palette.bg1 = palette.none
end

return {
  normal = {
    a = {bg = palette.bg_blue[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg4[1], fg = palette.fg[1]},
    c = {bg = palette.bg1[1], fg = palette.fg[1]}
  },
  insert = {
    a = {bg = palette.bg_green[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg4[1], fg = palette.fg[1]},
    c = {bg = palette.bg1[1], fg = palette.fg[1]}
  },
  visual = {
    a = {bg = palette.bg_red[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg4[1], fg = palette.fg[1]},
    c = {bg = palette.bg1[1], fg = palette.fg[1]}
  },
  replace = {
    a = {bg = palette.orange[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg4[1], fg = palette.fg[1]},
    c = {bg = palette.bg1[1], fg = palette.fg[1]}
  },
  command = {
    a = {bg = palette.yellow[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg4[1], fg = palette.fg[1]},
    c = {bg = palette.bg1[1], fg = palette.fg[1]}
  },
  terminal = {
    a = {bg = palette.purple[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg3[1], fg = palette.fg[1]},
    c = {bg = palette.bg1[1], fg = palette.fg[1]}
  },
  inactive = {
    a = {bg = palette.bg1[1], fg = palette.grey[1]},
    b = {bg = palette.bg1[1], fg = palette.grey[1]},
    c = {bg = palette.bg1[1], fg = palette.grey[1]}
  }
}
