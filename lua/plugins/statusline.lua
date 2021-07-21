local colors = require("colors")

local gl = require("galaxyline")
local gls = gl.section

local condition = require("galaxyline.condition")

gl.short_line_list = { "NvimTree" }

gls.left[1] = {
    StartBorder = {
        provider = function()
            return "█"
        end,
        highlight = { colors.cyan, colors.bgAlt }
    }
}

gls.left[2] = {
    ViMode = {
        provider = function()

            local alias = {
                n = 'NORMAL',
                i = 'INSERT',
                c = 'COMMAND',
                V = 'VISUAL',
                [''] = 'VISUAL',
                v = 'VISUAL',
                R = 'REPLACE',
            }

            local mode = alias[vim.fn.mode()]

            if mode == nil then
                return "  TERM "
            else
                return "  " .. mode .. " "
            end

        end,
        separator = "",
        separator_highlight = { colors.bgAlt, colors.bgAlt },
        highlight = { colors.fg, colors.bgAlt }
    }
}

gls.left[3] = {
    Separator = {
        provider = function()
            return " "
        end,
        highlight = { colors.bg, colors.bg }
    }
}

local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 30 then
        return true
    end
    return false
end

gls.right[1] = {
    DiffModified = {
        provider = "DiffModified",
        condition = checkwidth,
        icon = " ",
        highlight = { colors.yellow, colors.bg }
    }
}

gls.right[2] = {
    DiffRemove = {
        provider = "DiffRemove",
        condition = checkwidth,
        icon = " ",
        highlight = { colors.red, colors.bg }
    }
}

gls.right[3] = {
    DiagnosticError = {
        provider = "DiagnosticError",
        icon = "  ",
        highlight = { colors.red, colors.bg }
    }
}


gls.right[4] = {
    DiagnosticWarn = {
        provider = "DiagnosticWarn",
        icon = "  ",
        highlight = { colors.yellow, colors.bg }
    }
}

gls.right[5] = {
    GitBranch = {
        provider = "GitBranch",
        condition = require("galaxyline.condition").check_git_workspace,
        highlight = { colors.fg, colors.bg }
    }
}

gls.right[6] = {
    FileIcon = {
        provider = "FileIcon",
        condition = condition.buffer_not_empty,
        separator = " ",
        separator_highlight = { colors.bgAlt, colors.bgAlt },
        highlight = { require("galaxyline.provider_fileinfo").get_file_icon_color, colors.bgAlt }
    }
}

gls.right[7] = {
    FileName = {
        provider = "FileName",
        condition = condition.buffer_not_empty,
        highlight = { colors.fg, colors.bgAlt }
    }
}

gls.right[8] = {
    LineColumn = {
        provider = "LineColumn",
        condition = condition.buffer_not_empty,
        separator = " ",
        separator_highlight = { colors.bg, colors.bg },
        highlight = { colors.fg, colors.bg }
    }
}

gls.right[9] = {
    EndBorder = {
        provider = function()
            return "█"
        end,
        highlight = { colors.cyan, colors.bg }
    }
}
