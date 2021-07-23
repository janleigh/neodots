local bufferline = require("bufferline")
local colors = require("colors")

bufferline.setup {
    options = {
        indicator_icon = "█",

        buffer_close_icon = "",
        show_close_icon = false,

        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
    },
    highlights = {
        fill = {
            guibg = colors.bg
        },

        -- Buffer
        buffer_visible = {
            guibg = colors.bgAlt
        },
        buffer_selected = {
            guibg = colors.bgAlt2,
            gui = "bold"
        },

        -- Tabs
        tab_close = {
            guifg = colors.red,
            guibg = colors.bgAlt2
        },
        modified_selected = {
            guifg = colors.red,
            guibg = colors.bgAlt2
        },
        modified_visible = {
            guifg = colors.red,
            guibg = colors.bg
        },
        indicator_selected = {
            guifg = colors.fgAlt2,
            guibg = colors.bg
        },

        -- Separator
        separator = {
            guifg = colors.bg,
            guibg = colors.bg
        },

        close_button_visible = {
            guibg = colors.bgAlt
        },
        close_button_selected = {
            guifg = colors.red,
            guibg = colors.bgAlt2
        }
    }
}
