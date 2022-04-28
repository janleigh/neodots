local present, gl = pcall(require, "galaxyline")
if not present then
    return
end

local gls = gl.section

local theme = require("theme.config.theme")
local colors = theme.colors

gl.short_line_list = {
    "NvimTree",
    "zsh;#toggleterm#1",
    "zsh",
    "#toggleterm#1"
}

gls.left[1] = {
    LeftBorder = {
        provider = function()
            return "▌"
        end,
        highlight = {
            colors.green,
            colors.bgAlt3
        }
    }
}

gls.left[2] = {
    WhitespaceSeparator = {
        provider = function()
            return " "
        end,
        highlight = {
            colors.bgAlt3,
            colors.bgAlt3
        }
    }
}

gls.left[3] = {
    FileIcon = {
        provider = "FileIcon",
        condition = require("galaxyline.condition").buffer_not_empty,
        highlight = {
            require("galaxyline.providers.fileinfo").get_file_icon_color,
            colors.bgAlt3
        },
    },
}

gls.left[4] = {
    FileName = {
        provider = "FileName",
        separator = " ",
        separator_highlight = {
            colors.bgAlt3,
            colors.bgAlt3
        },
        highlight = {
            colors.fgAlt,
            colors.bgAlt3
        }
    }
}

gls.left[5] = {
    SlantSeparator = {
        provider = function()
            return ""
        end,
        highlight = {
            colors.bgAlt3,
            colors.bgAlt2
        }
    }
}

gls.left[6] = {
    WhitespaceSeparatorAlt = {
        provider = function()
            return " "
        end,
        highlight = {
            colors.bgAlt2,
            colors.bgAlt2
        }
    }
}

gls.left[7] = {
    DirectoryName = {
        provider = function ()
            local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
            return "   " .. dir_name .. " "
        end,
        separator = " ",
        separator_highlight = {
            colors.bgAlt2,
            colors.bgAlt2
        },
        highlight = {
            colors.base02,
            colors.bgAlt2
        }
    }
}

gls.left[8] = {
    SlantSeparatorAlt = {
        provider = function()
            return ""
        end,
        highlight = {
            colors.bgAlt2,
            colors.bgAlt
        }
    }
}

gls.left[9] = {
    WhitespaceSeparatorAltDarker = {
        provider = function()
            return " "
        end,
        highlight = {
            colors.bgAlt,
            colors.bgAlt
        }
    }
}

gls.left[10] = {
    DiffAdd = {
        provider = "DiffAdd",
        icon = " ",
        highlight = { colors.green, colors.bgAlt }
    }
}

gls.left[11] = {
    DiffModified = {
        provider = "DiffModified",
        icon = " ",
        highlight = { colors.yellow, colors.bgAlt }
    }
}

gls.left[12] = {
    DiffRemove = {
        provider = "DiffRemove",
        icon = "  ",
        highlight = { colors.red, colors.bgAlt }
    }
}

gls.right[1] = {
    InvertedSlantSeparatorAlt = {
        provider = function()
            return ""
        end,
        highlight = {
            colors.bgAlt,
            colors.bgAlt2
        }
    }
}

gls.right[2] = {
    WhitespaceSeparatorAlt = {
        provider = function()
            return " "
        end,
        highlight = {
            colors.bgAlt2,
            colors.bgAlt2
        }
    }
}

gls.right[3] = {
    FileEncode = {
        provider = "FileEncode",
        highlight = {
            colors.base02,
            colors.bgAlt2
        }
    }
}

gls.right[4] = {
    WhitespaceSeparatorAlt = {
        provider = function()
            return " "
        end,
        highlight = {
            colors.bgAlt2,
            colors.bgAlt2
        }
    }
}

gls.right[5] = {
    LinePercent = {
        provider = "LinePercent",
        highlight = {
            colors.base02,
            colors.bgAlt2
        }
    }
}

gls.right[6] = {
    WhitespaceSeparatorAlt = {
        provider = function()
            return " "
        end,
        highlight = {
            colors.bgAlt2,
            colors.bgAlt2
        }
    }
}

gls.right[7] = {
    InvertedSlantSeparator = {
        provider = function()
            return ""
        end,
        highlight = {
            colors.bgAlt3,
            colors.bgAlt2
        }
    }
}

gls.right[8] = {
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
        separator_highlight = { colors.bgAlt3, colors.bgAlt3 },
        highlight = { colors.fgAlt, colors.bgAlt3 }
    }
}

gls.right[9] = {
    RightBorder = {
        provider = function()
            return "▐"
        end,
        highlight = {
            colors.green,
            colors.bgAlt3
        }
    }
}
