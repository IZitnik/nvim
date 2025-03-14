local wk = require("which-key")

wk.register({
    f = {
	name = "File", -- optional group name
	w = "write file",
	q = "quit file",
	s = "source file",
	r = "replace in file",
	["1"] = "which_key_ignore",  -- special label to hide it in the popup
    },
    b = {
	name = "Buffer",
	b = "Next buffer",
	["<C-b>"] = "Previous buffer",
	d = "Close buffer"
    },
    p = {
	name = "Project",
	g = {
	    name = "Git",
	    p = "git panel",
	    b = {
		name = "Git blame",
		i = "inline blame",
		a = "toggle author",
		c = "toggle commit",
		d = "toggle date"
	    },
	},
	f = "Fuzzy find in project",
	F = "Search for text in project"
    },
    t = {
	name = "Terminal",
	t = "Toggle terminal",
	n = "New terminal",
	l = "Next terminal",
	h = "Previous terminal",
	x = "Kill terminal",
	p = "New python terminal"
    },
    l = {
	name = "LSP",
	s = {
	    name = "Symbol",
	    d = "Definition",
	    f = "Find references",
	    r = "Rename"
	},
	i = "Hover info"
    },
    d = {
	name = "Debug",
	b = "Toggle breakpoint",
	c = "Continue",
	o = "Step over",
	i = "Step into",
	p = {
	    name = "Python",
	    m = "Test method",
	    c = "Test class",
	    s = "Debug selection"
	}
    },
}, { prefix = "<leader>",  mode="n" })
