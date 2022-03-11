local theme = require("theme.config.theme")
local gl = require("galaxyline")
local colors = theme.colors
local gls = gl.section

gl.short_line_list = { "NvimTree", "vterminal" }

gls.left[1] = {
    Separator = {
        provider = function()
            return " "
        end,
        highlight = { colors.bgAlt, colors.bgAlt }
    }
}

gls.right[1] = {
    LineColumn = {
        provider = "LineColumn",
        separator = " ",
        separator_highlight = { colors.bgAlt, colors.bgAlt },
        highlight = { colors.fg, colors.bgAlt }
    }
}

gls.right[2] = {
    Separator = {
        provider = function()
            return "   "
        end,
        highlight = { colors.bgAlt, colors.bgAlt }
    }
}

gls.right[3] = {
    LinePercent = {
        provider = "LinePercent",
        separator = " ",
        separator_highlight = { colors.bgAlt, colors.bgAlt },
        highlight = { colors.fg, colors.bgAlt }
    }
}