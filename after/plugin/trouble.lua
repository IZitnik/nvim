require("trouble").setup({
  position = "bottom",
  height = 10,
  icons = true,
  auto_close = true,
  auto_preview = true,
  fold_open = "",
  fold_closed = "",
  action_keys = {
    -- map to {} to remove a mapping, for example:
    -- close = {},
    close = "q", -- close the list
    cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
    refresh = "r", -- manually refresh
    jump_close = {"<tab>", "<cr>"}, -- jump to the diagnostic and close the list
    toggle_mode = "m", -- toggle between "workspace" and "document" mode
    toggle_preview = "P", -- toggle auto_preview
    hover = "K", -- opens a small popup with the full multiline message
    preview = "p", -- preview the diagnostic location
    close_folds = {"zM", "zm"}, -- close all folds
    open_folds = {"zR", "zr"}, -- open all folds
    toggle_fold = {"zA", "za"}, -- toggle fold of current file
    previous = "k", -- preview item
    next = "j" -- next item
  },
  indent_lines = true,
})
