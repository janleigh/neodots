local ts = require("telescope")

ts.setup {
    defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        layout_config = {
            horizontal = {
                prompt_position = "top"
            }
        }
    }
}
