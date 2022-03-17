local g = vim.g

g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1

--- @diagnostic disable-next-line: different-requires
require("nvim-tree").setup {
    open_on_setup = false,
    auto_close = true,
    filters = {
        custom = {
            "node_modules"
        }
    },
    actions = {
        open_file = {
            quit_on_open = true
        }
    }
}
