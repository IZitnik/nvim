local wk = require("which-key")

wk.register({
    f = {
	name = "File", -- optional group name
	g = "git panel",
        w = "write file",
	q = "quit file",
	s = "source file",
	["1"] = "which_key_ignore",  -- special label to hide it in the popup
    },
    u = "Undo tree",
    b = {
	name = "Buffer",
	b = "Next buffer",
	["<C-b>"] = "Previous buffer",
	d = "Close buffer"
    },
    p = {
	name = "Project",
	v = "Open tree view",
	f = "Fuzzy find in project",
	F = "Search for text in project"
    }
}, { prefix = "<leader>",  mode="n" })
