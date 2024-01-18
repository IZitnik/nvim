-- FireNvim configuration

vim.g.firenvim_config = {
  localSettings = {
    ['.*'] = {
      cmdline = 'neovim',
      content = 'text',
      priority = 1,
      selector = 'textarea',
      takeover = 'never',
    },
  },
}
