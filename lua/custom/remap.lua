vim.g.mapleader = " "

local keymap = vim.keymap.set

-- Faster movements
keymap("n", "J", "5j")
keymap("n", "K", "5k")
keymap("n", "j", ":norm! gj<CR>")
keymap("n", "gj", ":norm! j<CR>")
keymap("n", "k", ":norm! gk<CR>")
keymap("n", "gk", ":norm! k<CR>")

-- File bindings
keymap("n", "<leader>fw", vim.cmd.w)
keymap("n", "<leader>fs", vim.cmd.so)
keymap("n", "<leader>fq", vim.cmd.q)

-- Insert mode muscle memory minds
keymap("i", "<C-v>", "<C-o>\"+p")
keymap("i", "<C-c>", "<C-o>\"+yy")
keymap("i", "<C-u>", "<C-o>u")
keymap("i", "<C-z>", "<C-o><C-r>")

-- Buffer movement keymaps
keymap("n", "<leader>bb", ":bnext<cr>")
keymap("n", "<leader>b<C-b>", ":bprevious<cr>")
keymap("n", "<leader>bd", ":bdelete<cr>")
keymap("n", "<leader>bD", ":bdelete!<cr>")

-- INSERT mode movement with ctrl
keymap("i", "<C-h>", "<Esc>ha")
keymap("i", "<C-j>", "<Esc>ja")
keymap("i", "<C-k>", "<Esc>ka")
keymap("i", "<C-l>", "<Esc>la")

-- Move to window using the mojvement keys
keymap("n", "<Left>", "<C-w>h")
keymap("n", "<Down>", "<C-w>j")
keymap("n", "<Up>", "<C-w>k")
keymap("n", "<Right>", "<C-w>l")

-- Line move normal mode
keymap("n", "<A-j>", ":m +1<Enter>")
keymap("n", "<A-k>", ":m -2<Enter>")

-- Miscellanous customs
keymap("n", "Y", "y$")

-- Trouble keymaps
keymap("n", "<leader>lt", ":TroubleToggle<CR>")

-- Term keymaps
keymap("t", "<Esc>", "<C-\\><C-n>")

-- GitBlame
keymap("n", "<leader>pgbi", function()
	vim.g.gitblame_display_virtual_text = vim.g.gitblame_display_virtual_text == 1 and 0 or 1
end)
