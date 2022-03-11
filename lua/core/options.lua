local g = vim.g
local opt = vim.opt

vim.cmd([[
    set guicursor=
    set cursorline
    filetype plugin off
]])

-- General stuff
g.mapleader = " "
g.encoding = "utf8"
opt.ruler = false
opt.showmode = false
opt.termguicolors = true
opt.mouse = "a"
opt.number = true
opt.shortmess = "c"
opt.completeopt = "menuone,noinsert"
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

-- Go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>hl"
