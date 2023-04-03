require("custom.packer");
require("custom.remap");

local set = vim.opt
vim.cmd("set number relativenumber")
vim.cmd("set cursorline")

set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smartindent = true

set.wrap = false
set.cursorline = true
set.incsearch = true
set.hlsearch = true
set.mouse = "a"
set.showmatch = true
set.autoindent = true
set.scrolloff = 5
set.sidescrolloff = 10

vim.opt.wildmenu = true
vim.opt.wildignore = vim.opt.wildignore + { '*/node_modules/*', '*/.git/*', '*/.cache/*' }


if os.getenv("WSLENV") then
  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] = "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))",
      ["*"] = "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))",
    },
    cache_enabled = 0,
  }
end
