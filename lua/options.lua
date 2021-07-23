local opt = vim.opt
local g = vim.g

vim.cmd([[
    filetype plugin on
    filetype indent on
]])

g.mapleader = ","
opt.ruler = false
opt.showmode = false
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
