vim.g.mapleader = " "
local keymap = vim.keymap.set

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
keymap("n", "gn", ":bnext<cr>")
keymap("n", "gp", ":bprevious<cr>")
keymap("n", "gx", ":bdelete<cr>  ")

keymap("n", "<leader>bb", ":bnext<cr>")
keymap("n", "<leader>b<C-b>", ":bprevious<cr>")
keymap("n", "<leader>bd", ":bdelete<cr>")

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

-- LSP keymaps
keymap("n", "<leader>lsd", ":lua vim.lsp.buf.definition()<CR>")
keymap("n", "<leader>lsf", ":lua vim.lsp.buf.references()<CR>")
keymap("n", "<leader>lsr", ":lua vim.lsp.buf.rename()<CR>")

keymap("n", "<leader>li", ":lua vim.lsp.buf.hover()<CR>")

-- Trouble keymaps
keymap("n", "<leader>lt", ":TroubleToggle<CR>")
