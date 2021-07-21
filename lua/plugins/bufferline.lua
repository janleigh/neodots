local bufferline = require("bufferline")
local colors = require("colors")

bufferline.setup {
    options = {
        indicator_icon = "█",

        buffer_close_icon = "",
        show_buffer_close_icons = false,
        show_close_icon = false,

        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
    },
    highlights = {
        background = {
            guibg = colors.bgAlt
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
        modified_selected = {
            guifg = colors.red,
            guibg = colors.bgAlt
        },
        modified_visible = {
            guifg = colors.red
        },
        indicator_selected = {
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
