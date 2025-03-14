require('lsp-setup').setup({
  default_mappings = false,
  mappings = {
    gD = 'lua vim.lsp.buf.declaration()',
    gd = 'lua require"telescope.builtin".lsp_definitions()',
    gt = 'lua vim.lsp.buf.type_definition()',
    gi = 'lua require"telescope.builtin".lsp_implementations()',
    gr = 'lua require"telescope.builtin".lsp_references()',
    gH = 'lua vim.lsp.buf.hover()',
    ['<space>ls'] = 'lua vim.lsp.buf.signature_help()',
    ['<space>lr'] = 'lua vim.lsp.buf.rename()',
    ['<space>lc'] = 'lua vim.lsp.buf.code_action()',
    ['<space>lf'] = 'lua vim.lsp.buf.formatting()',
    ['<space>le'] = 'lua vim.diagnostic.open_float()',
    ['[d'] = 'lua vim.diagnostic.goto_prev()',
    [']d'] = 'lua vim.diagnostic.goto_next()',
  },
  inlay_hints = {enabled = true},
  servers = {
    pylsp   = {},
    clangd  = {},
    lua_ls  = {},
    hls     = {},
    asm_lsp = {}
  }
})
