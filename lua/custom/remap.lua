vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fw", vim.cmd.w)
vim.keymap.set("n", "<leader>fs", vim.cmd.so)
vim.keymap.set("n", "<leader>fq", vim.cmd.q)

-- Buffer movement keymaps
vim.keymap.set("n", "gn", ":bnext<cr>")
vim.keymap.set("n", "gp", ":bprevious<cr>")
vim.keymap.set("n", "gx", ":bdelete<cr>  ")

vim.keymap.set("n", "<leader>bb", ":bnext<cr>")
vim.keymap.set("n", "<leader>b<C-b>", ":bprevious<cr>")
vim.keymap.set("n", "<leader>bd", ":bdelete<cr>")

-- INSERT mode movement with ctrl
vim.keymap.set("i", "<C-h>", "<C-o>h")
vim.keymap.set("i", "<C-j>", "<C-o>j")
vim.keymap.set("i", "<C-k>", "<C-o>k")
vim.keymap.set("i", "<C-l>", "<C-o>l")

-- Move to window using the mojvement keys
vim.keymap.set("n", "<Left>", "<C-w>h")
vim.keymap.set("n", "<Down>", "<C-w>j")
vim.keymap.set("n", "<Up>", "<C-w>k")
vim.keymap.set("n", "<Right>", "<C-w>l")

-- Line move normal mode
vim.keymap.set("n", "<A-j>", ":m +1<Enter>")
vim.keymap.set("n", "<A-k>", ":m -2<Enter>")
