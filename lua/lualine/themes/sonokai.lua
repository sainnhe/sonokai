-- =============================================================================
-- URL: https://github.com/sainnhe/sonokai
-- Filename: lua/lualine/themes/sonokai.lua
-- Author: sainnhe
-- Email: sainnhe@gmail.com
-- License: MIT License
-- =============================================================================

local configuration = vim.fn['sonokai#get_configuration']()
local palette = vim.fn['sonokai#get_palette'](configuration.style)

local c_background = palette.bg1[1]
if vim.g.sonokai_transparent_background == 1 then
  c_background = palette.none[1]
end

return {
  normal = {
    a = {bg = palette.bg_blue[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg4[1], fg = palette.fg[1]},
    c = {bg = c_background, fg = palette.fg[1]}
  },
  insert = {
    a = {bg = palette.bg_green[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg4[1], fg = palette.fg[1]},
    c = {bg = c_background, fg = palette.fg[1]}
  },
  visual = {
    a = {bg = palette.bg_red[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg4[1], fg = palette.fg[1]},
    c = {bg = c_background, fg = palette.fg[1]}
  },
  replace = {
    a = {bg = palette.orange[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg4[1], fg = palette.fg[1]},
    c = {bg = c_background, fg = palette.fg[1]}
  },
  command = {
    a = {bg = palette.yellow[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg4[1], fg = palette.fg[1]},
    c = {bg = c_background, fg = palette.fg[1]}
  },
  terminal = {
    a = {bg = palette.purple[1], fg = palette.bg0[1], gui = 'bold'},
    b = {bg = palette.bg3[1], fg = palette.fg[1]},
    c = {bg = c_background, fg = palette.fg[1]}
  },
  inactive = {
    a = {bg = c_background, fg = palette.grey[1]},
    b = {bg = c_background, fg = palette.grey[1]},
    c = {bg = c_background, fg = palette.grey[1]}
  }
}
