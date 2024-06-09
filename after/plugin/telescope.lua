require('telescope').setup{
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			"venv",
			"__pycache__",
			".png$",
		}
	}
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pF', builtin.live_grep, {})
