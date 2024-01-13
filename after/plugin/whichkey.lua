local wk = require("which-key")

wk.register({
  f = {
    name = "File", -- optional group name
    w = "write file",
    q = "quit file",
    s = "source file",
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
    v = "Open tree view",
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
}, { prefix = "<leader>",  mode="n" })
