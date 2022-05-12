local theme = require("theme.config.theme")
local colors = theme.colors

-- Colors
local darkestBg = colors.darkestBg
local _bg = colors.bg
local bgAlt = colors.bgAlt
local bgAlt2 = colors.bgAlt2
local _fg = colors.fg
-- local fgAlt2 = bgAlt2

local red = colors.red
local green = colors.green
local yellow = colors.yellow
local blue = colors.blue
local magenta = colors.magenta
local cyan = colors.cyan

local dbFg = "#a89984"
local folderFg= "#DCB67A"

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
fg("EndOfBuffer", _bg)
fgbg("VertSplit", bgAlt, _bg)
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
fg("NvimTreeFolderIcon", folderFg)
fg("NvimTreeFolderName", colors.base05)
fg("NvimTreeOpenedFolderName", colors.base05)
fg("NvimTreeEmptyFolderName", colors.base05)
fg("NvimTreeFileDirty", red)
fg("NvimTreeExecFile", _fg)
fg("NvimTreeGitDirty", red)
fg("NvimTreeGitDeleted", red)
fg("NvimTreeRootFolder", colors.base04)
fg("NvimTreeIndentMarker", colors.base01)
bg("NvimTreeNormal", darkestBg)
fgbg("NvimTreeVertSplit", darkestBg, darkestBg)
fgbg("NvimTreeStatusLine", _bg, _bg)
fgbg("NvimTreeEndOfBuffer", darkestBg, darkestBg)
vim.cmd("hi NvimTreeStatusLineNC gui=underline guifg=" .. _bg .. " guibg=" .. _bg)

-- Telescope
fgbg("TelescopeBorder", bgAlt2, darkestBg)
bg("TelescopeNormal", darkestBg)
bg("TelescopeSelection", _bg)
fgbg("TelescopeSelectionCaret", cyan, _bg)
bg("TelescopePrompt", bgAlt2)
bg("TelescopePromptBorder", bgAlt2)
bg("TelescopePromptCounter", bgAlt2)
bg("TelescopePromptNormal", bgAlt2)
fgbg("TelescopePromptTitle", bgAlt2, bgAlt2)
fg("TelescopeResultsTitle", darkestBg)
fgbg("TelescopePreviewTitle", darkestBg, green)

-- Notify
fgbg("NotifySUCCESSBorder", bgAlt2, bgAlt2)
fgbg("NotifySUCCESSTitle", green, bgAlt2)
fgbg("NotifySUCCESSIcon", green, bgAlt2)
fgbg("NotifySUCCESSBody", _fg, bgAlt2)
fgbg("NotifyINFOBorder", bgAlt2, bgAlt2)
fgbg("NotifyINFOTitle", cyan, bgAlt2)
fgbg("NotifyINFOIcon", cyan, bgAlt2)
fgbg("NotifyINFOBody", _fg, bgAlt2)
fgbg("NotifyWARNBorder", bgAlt2, bgAlt2)
fgbg("NotifyWARNTitle", yellow, bgAlt2)
fgbg("NotifyWARNIcon", yellow, bgAlt2)
fgbg("NotifyWARNBody", _fg, bgAlt2)
fgbg("NotifyERRORBorder", bgAlt2, bgAlt2)
fgbg("NotifyERRORTitle", red, bgAlt2)
fgbg("NotifyERRORIcon", red, bgAlt2)
fgbg("NotifyERRORBody", _fg, bgAlt2)
fgbg("NotifyTRACEBorder", bgAlt2, bgAlt2)
fgbg("NotifyTRACETitle", magenta, bgAlt2)
fgbg("NotifyTRACEIcon", magenta, bgAlt2)
fgbg("NotifyTRACEBody", _fg, bgAlt2)
vim.cmd("hi NotifySUCCESSTitle gui=italic")
vim.cmd("hi NotifyINFOTitle gui=italic")
vim.cmd("hi NotifyWARNTitle gui=italic")
vim.cmd("hi NotifyERRORTitle gui=italic")
vim.cmd("hi NotifyTRACETitle gui=italic")

-- Pmenu
bg("Pmenu", bgAlt)
bg("PmenuSbar", bgAlt)
bg("PmenuThumb", bgAlt)
fgbg("PmenuSel", colors.funnyGreen, bgAlt2)

-- CMP
fg("CmpItemAbbrMatch", colors.base05)
fg("CmpItemAbbrMatchFuzzy", colors.base05)
fg("CmpItemAbbr", colors.base03)
fg("CmpItemKind", blue)
fg("CmpItemMenu", blue)

-- Terminal
-- bg("ToggleTerm1Normal", bgAlt2)
-- bg("ToggleTerm1NormalFloat", bgAlt2)

vim.cmd("hi typescriptParens guibg=none")
