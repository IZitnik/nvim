vim.g.surround_no_mappings = 1

local keymap = vim.keymap.set
-- Insert keymaps
keymap("i", "<C-g>s", "<Plug>Isurround")
keymap("i", "<C-g>S", "<Plug>ISurround")
-- Normal keymaps
keymap("n", "ds", "<Plug>Dsurround")
keymap("n", "cs", "<Plug>Csurround")
keymap("n", "ys", "<Plug>Ysurround")
keymap("n", "yS", "<Plug>YSurround")
keymap("n", "yss", "<Plug>Yssurround")
keymap("n", "ySs", "<Plug>YSsurround")
keymap("n", "ySS", "<Plug>YSsurround")
-- Visual keymaps
keymap("x", "gS", "<Plug>VgSurround")

