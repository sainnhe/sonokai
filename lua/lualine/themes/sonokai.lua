-- =========================================================
-- Adding all colors from the main theme for futureproofing
-- =========================================================

local colors = {
    black = '#181819',
    bg0 = '#2c2e34',
    bg1 = '#33353f',
    bg2 = '#363944',
    bg3 = '#3b3e48',
    bg4 = '#414550',
    bg_red = '#ff6077',
    diff_red = '#55393d',
    bg_green = '#a7df78',
    diff_green = '#394634',
    bg_blue = '#85d3f2',
    diff_blue = '#354157',
    diff_yellow = '#4e432f',
    fg = '#e2e2e3',
    red = '#fc5d7c',
    orange = '#f39660',
    yellow = '#e7c664',
    green = '#9ed072',
    blue = '#76cce0',
    purple = '#b39df3',
    grey = '#7f8490',
    grey_dim = '#595f6f',
}

return {
  normal = {
    a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg0, fg = colors.blue},
    c = {bg = colors.bg3, fg = colors.fg},
    x = {bg = colors.bg3, fg = colors.fg},
    y = {bg = colors.bg1, fg = colors.fg}
  },
  insert = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg0, fg = colors.yellow},
    c = {bg = colors.bg3, fg = colors.fg}
  },
  visual = {
    a = {bg = colors.purple, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg0, fg = colors.purple},
    c = {bg = colors.bg3, fg = colors.fg}
  },
  replace = {
    a = {bg = colors.red, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg0, fg = colors.red},
    c = {bg = colors.bg3, fg = colors.fg}
  },
  command = {
    a = {bg = colors.orange, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg0, fg = colors.orange},
    c = {bg = colors.bg3, fg = colors.fg}
  },
  inactive = {
    a = {bg = colors.bg1, fg = colors.grey},
    b = {bg = colors.bg1, fg = colors.grey},
    c = {bg = colors.bg1, fg = colors.grey},
    x = {bg = colors.bg1, fg = colors.grey},
    z = {bg = colors.bg1, fg = colors.grey}
  },
}
