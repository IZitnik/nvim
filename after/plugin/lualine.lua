local git_blame = require('gitblame')

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {{'mode', fmt = function(str) return str:sub(1,1) end, separator={right=""}, color = {bg = '#313244', fg = '#fff', gui = 'bold'}}, 'hostname'},
    lualine_b = {'branch', {git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available}, 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {{'encoding', color = {bg = '#585b70'}, separator={left = ''}}},
    lualine_y = {'filetype', 'location'},
    lualine_z = {} -- empty => ''
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
