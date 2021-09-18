local g = vim.g
local opt = vim.opt

vim.cmd([[
    set guicursor=
    set cursorline
    filetype plugin on
]])

g.mapleader = ","
g.encoding = "utf8"
opt.ruler = false
opt.showmode = true
opt.termguicolors = true
opt.mouse = "a"
opt.number = true
opt.backspace = "eol,start,indent"
opt.shortmess= "c"
opt.updatetime = 300

-- Indent
opt.autoindent = true
opt.smartindent = true

-- Tab
opt.expandtab = true
opt.smarttab = true
opt.shiftwidth = 4
opt.tabstop = 4

-- Search
opt.hlsearch = true
opt.incsearch = true
