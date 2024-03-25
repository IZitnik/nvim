-- Ensures packer is installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()
if packer_bootstrap then
  vim.cmd [[PackerSync]]
end

-- Setup
require("custom.packer");
require("custom.remap");

local set = vim.opt

-- Indentation and tabs settings
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smartindent = true
set.autoindent = true

-- Cursor and search settings
set.cursorline = true
set.relativenumber = true
set.number = true
set.incsearch = true
set.hlsearch = true
set.showmatch = true

-- Scroll settings
set.wrap = false
set.scrolloff = 5
set.sidescrolloff = 10

-- Other settings
set.mouse = "a"
set.shada = nil
set.shadafile = nil
set.wildmenu = true
set.wildignore = set.wildignore + { '*/node_modules/*', '*/.git/*', '*/.cache/*' }

-- WSL Clipboard fix
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

-- Remove trailing whitespaces on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
