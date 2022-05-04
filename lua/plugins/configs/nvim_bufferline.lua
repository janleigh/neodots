local present, bufferline = pcall(require, "bufferline")
if not present then
    return
end

local theme = require("theme.config.theme")
local colors = theme.colors

local _M = {}

_M.options = {
    offsets = {{ filetype = "NvimTree", text = "", padding = 1, highlight = "BufferlineDirectory" }},
    indicator_icon = "▎",
    modified_icon = "",

    close_icon = "",
    show_close_icon = true,

    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    separator_style = "thin",
}

_M.highlights = {
    background = {
        guifg = colors.fgAlt2,
        guibg = colors.darkerBg
    },
    fill = {
        guifg = colors.fgAlt,
        guibg = colors.darkerBg
    },

    -- Buffer
    buffer_visible = {
        guifg = colors.fgAlt2,
        guibg = colors.darkerBg
    },
    buffer_selected = {
        guifg = colors.fgAlt,
        guibg = colors.bgAlt2,
        gui = "bold"
    },

    -- Modified
    modified = {
        guifg = colors.yellow,
        guibg = colors.darkerBg
    },
    modified_selected = {
        guifg = colors.red,
        guibg = colors.bgAlt
    },
    modified_visible = {
        guifg = colors.yellow,
        guibg = colors.darkerBg
    },
    indicator_selected = {
        guifg = colors.green,
        guibg = colors.bgAlt2
    },

    -- Separator
    separator = {
        guifg = colors.darkerBg,
        guibg = colors.darkerBg
    },
    separator_visible = {
        guifg = colors.darkerBg,
        guibg = colors.darkerBg
    },
    separator_selected = {
        guifg = colors.darkerBg,
        guibg = colors.darkerBg
    },

    -- Close Button
    close_button = {
        guifg = colors.base01,
        guibg = colors.darkerBg
    },
    close_button_visible = {
        guifg = colors.base01,
        guibg = colors.darkerBg
    },
    close_button_selected = {
        guifg = colors.red,
        guibg = colors.bgAlt2
    }
}

bufferline.setup(_M)
