local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
  },
  handlers = {
    lsp_zero.default_setup,
    intelephense = function()
      require('lspconfig').intelephense.setup({
        cmd = { 'intelephense', '--stdio' },
        filetypes = { 'php' },
        root_dir = require('lspconfig.util').root_pattern('composer.json', '.git', 'LICENSE.txt')
        single_file_support = true,
      })
    end,
  },
})


local cmp = require('cmp')
lsp_zero.cmp_action()

lsp_zero.set_sign_icons({
  error = '✘',
  warn  = '▲',
  hint  = '⚑',
  info  = '»'
})

cmp.setup({
  sources = {
    { name = 'path' },
    { name = 'nvim_lsp' },
    -- { name = 'luasnip', keyword_length = 2 },
    -- { name = 'buffer',  keyword_length = 3 },
  },
  window = {
    documentation = cmp.config.window.bordered(),
    completion = cmp.config.window.bordered(),
  },

  formatting = lsp_zero.cmp_format(),
})
