local bufferline = require("bufferline")
local theme = require("theme.config.theme")
local colors = theme.colors

bufferline.setup {
    options = {
        offsets = {{ filetype = "NvimTree", text = "", padding = 1, highlight = "Directory" }},
        indicator_icon = "",

        close_icon = "",
        show_close_icon = true,

        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
    },
    highlights = {
        background = {
            guifg = colors.fgAlt2,
            guibg = colors.bgAlt2
        },
        fill = {
            guifg = colors.fgAlt,
            guibg = colors.bg
        },

        -- Buffer
        buffer_visible = {
            guifg = colors.fgAlt2,
            guibg = colors.bgAlt2
        },
        buffer_selected = {
            guifg = colors.fgAlt,
            guibg = colors.bgAlt3,
            gui = "bold"
        },

        -- Modified
        modified_selected = {
            guifg = colors.red,
            guibg = colors.bgAlt3
        },
        modified_visible = {
            guifg = colors.red,
            guibg = colors.bgAlt3
        },
        indicator_selected = {
            guifg = colors.fgAlt2,
            guibg = colors.bgAlt3
        },

        -- Separator
        separator = {
            guifg = colors.bg,
            guibg = colors.bg
        },

        -- Duplicate
        duplicate = {
            guibg = colors.bgAlt2
        },
        duplicate_visible = {
            guibg = colors.bgAlt2
        },
        duplicate_selected = {
            guibg = colors.bgAlt3
        },

        -- Close Button
        close_button = {
            guifg = colors.red,
            guibg = colors.bgAlt2
        },
        close_button_visible = {
            guifg = colors.red,
            guibg = colors.bgAlt2
        },
        close_button_selected = {
            guifg = colors.red,
            guibg = colors.bgAlt3
        }
    }
}
