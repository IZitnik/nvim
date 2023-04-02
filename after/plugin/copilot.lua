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
			open = "<C-a>"	
		},
		layout = {
			position = "right", -- | top | left | right
			ratio = 0.4
		},
	},
	suggestion = {
		enabled = true,
		auto_trigger = true,
		-- debounce = 75,
		keymap = {
			accept = "<S-Tab>",
			next = "<M-B>",
			prev = "<C-B>",
			dismiss = "<C-Tab>",
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
vim.cmd(":Copilot suggestion")
vim.api.nvim_set_hl(0, "CopilotSuggestion", {foreground = "#bac2de", background = "NONE"}) 
vim.api.nvim_set_hl(0, "CopilotAnnotation", {foreground = "#89b4fa", background = "NONE"})
