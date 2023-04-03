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
