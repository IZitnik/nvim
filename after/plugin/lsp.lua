local lsp = require('lsp-zero').preset()

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)
-- when you don't have masminimalon.nvim installed
-- you'll need to list the servers installed in your system
lsp.skip_server_setup({'rust-analyzer'})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()


-- Errors
vim.diagnostic.config({
	virtual_text = true
})

