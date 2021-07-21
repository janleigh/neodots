local colors = require("colors")
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

bg("LineNr", colors.bg)
bg("SignColumn", colors.bg)
fg("EndOfBuffer", colors.bg)
vim.cmd("hi StatusLineNC gui=underline guibg=NONE guifg=" .. colors.bgAlt)

-- Bufferline
bg("BufferLineFill", "NONE")
bg("BufferLineCloseButtonSelected", colors.bgAlt)
bg("BufferLineSeparator", "NONE")
fg("BufferLineSeparator", colors.bgAlt)

-- coc.nvim
fg("CocErrorSign", colors.red)
fg("CocWarningSign", colors.yellow)
fg("CocInfoSign", colors.blue)
fg("CocHintSign", colors.cyan)
fg("CocHintLine", colors.bg)

-- Dashboard
fg("DashboardHeader", dbFg)
fg("DashboardCenter", dbFg)
fg("DashboardShortcut", dbFg)
fg("DashboardFooter", dbFg)

-- GitSigns
fgbg("GitSignsAdd", colors.green, colors.bg)
fgbg("GitSignsChange", colors.blue, colors.bg)
fgbg("GitSignsChangeDelete", colors.red, colors.bg)
fgbg("GitSignsDelete", colors.red, colors.bg)

-- Floaterm
bg("FloatermBorder", colors.bg)

-- NvimTree
fg("NvimTreeFileDirty", colors.red)
fg("NvimTreeGitDirty", colors.red)
fg("NvimTreeRootFolder", colors.blue)
bg("NvimTreeNormal", colors.bgAlt)
fgbg("NvimTreeVertSplit", colors.bg, colors.bg)
fgbg("NvimTreeStatusLine", colors.bgAlt, colors.bg)
fgbg("NvimTreeEndOfBuffer", colors.bgAlt, colors.bgAlt)
vim.cmd("hi NvimTreeStatusLineNC gui=underline guifg=" .. colors.bgAlt .. " guibg=" .. colors.bg)
