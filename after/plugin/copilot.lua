vim.g.copilot_filetypes = { ["*"] = true }
vim.g.copilot_no_tab_map = true
require('copilot').setup({
	panel = {
		enabled = true,
		auto_refresh = false,
		keymap = {
			jump_prev = "[[",
			jump_next = "]]",
			accept = "<CR>",
			refresh = "gr",
			open = "<M-CR>"
		},
		layout = {
			position = "right", -- | top | left | right
			ratio = 0.4
		},
	},
	filetypes = {
		yaml = false,
		markdown = false,
		help = false,
		gitcommit = false,
		gitrebase = false,
		hgcommit = false,
		svn = false,
		cvs = false,
		["."] = false,
	},
	copilot_node_command = 'node', -- Node.js version must be > 16.x
	server_opts_overrides = {},
})



