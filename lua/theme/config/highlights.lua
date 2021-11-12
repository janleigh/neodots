local theme = require("theme.config.theme")
local colors = theme.colors

-- Colors
local _bg = colors.bg
local bgAlt = colors.bgAlt
local bgAlt2 = colors.bgAlt2
local _fg = colors.fg
local fgAlt2 = colors.bgAlt2

local red = colors.red
local green = colors.green
local yellow = colors.yellow
local blue = colors.blue
local magenta = colors.magenta
local cyan = colors.cyan

local dbFg = "#a89984"

local function fg(group, color)
    vim.cmd("hi " .. group .. " guifg=" .. color)
end

local function bg(group, color)
    vim.cmd("hi " .. group .. " guibg=" .. color)
end

local function fgbg(group, fgcol, bgcol)
    vim.cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

-- Italic Comments
vim.cmd("hi Comment gui=italic")

bg("LineNr", _bg)
bg("SignColumn", _bg)
bg("VertSplit", _bg)
fg("EndOfBuffer", _bg)
vim.cmd("hi StatusLineNC gui=underline guibg=NONE guifg=" .. bgAlt)

-- CursorLine
vim.cmd("hi clear CursorLine")
fgbg("CursorLineNr", colors.base04, _bg)

-- LSP
fg("LspDiagnosticsSignHint", magenta)
fg("LspDiagnosticsVirtualTextHint", magenta)

-- Dashboard
fg("DashboardHeader", dbFg)
fg("DashboardCenter", dbFg)
fg("DashboardShortcut", dbFg)
fg("DashboardFooter", dbFg)

-- GitSigns
fgbg("GitSignsAdd", green, _bg)
fgbg("GitSignsChange", blue, _bg)
fgbg("GitSignsChangeDelete", red, _bg)
fgbg("GitSignsDelete", red, _bg)

-- Indent
fg("IndentBlanklineChar", bgAlt)

-- Floaterm
bg("FloatermBorder", _bg)

-- NvimTree
fg("NvimTreeFolderIcon", blue)
fg("NvimTreeFolderName", blue)
fg("NvimTreeOpenedFolderName", blue)
fg("NvimTreeEmptyFolderName", blue)
fg("NvimTreeFileDirty", red)
fg("NvimTreeExecFile", _fg)
fg("NvimTreeGitDirty", red)
fg("NvimTreeGitDeleted", red)
fg("NvimTreeRootFolder", blue)
fg("NvimTreeIndentMarker", fgAlt2)
bg("NvimTreeNormal", bgAlt)
fgbg("NvimTreeVertSplit", _bg, _bg)
fgbg("NvimTreeStatusLine", _bg, _bg)
fgbg("NvimTreeEndOfBuffer", bgAlt, bgAlt)
vim.cmd("hi NvimTreeStatusLineNC gui=underline guifg=" .. bgAlt .. " guibg=" .. _bg)

-- Telescope
fg("TelescopeBorder", bgAlt2)

vim.cmd("hi typescriptParens guibg=none")
