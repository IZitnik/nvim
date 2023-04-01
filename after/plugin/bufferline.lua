vim.opt.termguicolors = true
require("bufferline").setup{
	options = {
		color_icons = true,
		show_buffer_icons = true,
		indicator_style = "icon",
		-- separator_style = "slant",
		always_show_bufferline = true,
		separator_style = {'', ''},
		offsets = {
			filetype = "NvimTree",
			text = "File Explorer",
			separator = true
		}

	},
}
