local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
    f = {
	name = "file", -- optional group name
        w = "write file",
	q = "quit file",
	s = "source file",
	["1"] = "which_key_ignore",  -- special label to hide it in the popup
    },
    p = {
	name = "project",
	v = "Open tree view",
	f = "Fuzzy find in project",
	F = "Search for text in project"
    },

}, { prefix = "<leader>",  mode="n" })
