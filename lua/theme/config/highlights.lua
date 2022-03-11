local theme = require("theme.config.theme")
local colors = theme.colors

-- Colors
local darkestBg = colors.darkestBg
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
fgbg("CursorLineNr", colors.base06, _bg)

-- LSP
fg("LspDiagnosticsSignHint", magenta)
fg("LspDiagnosticsVirtualTextHint", magenta)

-- Dashboard
fg("DashboardHeader", "#6e7071")
fg("DashboardCenter", "#b7b8b8")
fg("DashboardShortcut", "#6e7071")
fg("DashboardFooter", dbFg)

-- GitSigns
fgbg("GitSignsAdd", green, _bg)
fgbg("GitSignsChange", blue, _bg)
fgbg("GitSignsChangeDelete", red, _bg)
fgbg("GitSignsDelete", red, _bg)

-- Indent
fg("IndentBlanklineChar", colors.base01)

-- Bufferline
bg("BufferlineDirectory", darkestBg)

-- NvimTree
fg("NvimTreeFolderIcon", blue)
fg("NvimTreeFolderName", blue)
fg("NvimTreeOpenedFolderName", blue)
fg("NvimTreeEmptyFolderName", blue)
fg("NvimTreeFileDirty", red)
fg("NvimTreeExecFile", _fg)
fg("NvimTreeGitDirty", red)
fg("NvimTreeGitDeleted", red)
fg("NvimTreeRootFolder", "#6e7071")
fg("NvimTreeIndentMarker", colors.base01)
bg("NvimTreeNormal", darkestBg)
fgbg("NvimTreeVertSplit", darkestBg, darkestBg)
fgbg("NvimTreeStatusLine", darkestBg, darkestBg)
fgbg("NvimTreeEndOfBuffer", darkestBg, darkestBg)
vim.cmd("hi NvimTreeStatusLineNC gui=underline guifg=" .. darkestBg .. " guibg=" .. darkestBg)

-- Telescope
fgbg("TelescopeBorder", bgAlt2, darkestBg)
bg("TelescopeNormal", darkestBg)
bg("TelescopeSelection", _bg)
fgbg("TelescopeSelectionCaret", green, _bg)
bg("TelescopePrompt", bgAlt2)
bg("TelescopePromptBorder", bgAlt2)
bg("TelescopePromptCounter", bgAlt2)
bg("TelescopePromptNormal", bgAlt2)
fgbg("TelescopePromptTitle", bgAlt2, bgAlt2)
fg("TelescopeResultsTitle", darkestBg)
fgbg("TelescopePreviewTitle", darkestBg, green)

vim.cmd("hi typescriptParens guibg=none")
