require('oil').setup({
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", {
	silent = true,
	desc = "Open parent directory",
})
