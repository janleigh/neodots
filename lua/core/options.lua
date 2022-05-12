local g = vim.g
local opt = vim.opt

vim.cmd([[
    set guicursor=
    filetype plugin off
]])

-- General stuff
g.mapleader = " "
g.encoding = "utf8"
opt.mouse = "a"
opt.hidden = true
opt.ruler = false
opt.cursorline = true
opt.number = true
opt.relativenumber = false
opt.showmode = false
opt.termguicolors = true
opt.updatetime = 300
opt.cmdheight = 1
opt.pumheight = 10
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.laststatus = 3
opt.clipboard = "unnamedplus"
opt.completeopt = "menuone,noinsert"
opt.signcolumn = "yes"
opt.shortmess = "F"

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

vim.cmd("set fillchars+=vert:│")

-- Disable built-in vim plugins
local built_ins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
}

for _, plugin in pairs(built_ins) do
    g["loaded_" .. plugin] = 1
end
