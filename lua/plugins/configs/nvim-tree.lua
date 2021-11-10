local g = vim.g

g.nvim_tree_indent_markers = 1
g.nvim_tree_quit_on_open = 1
g.nvim_tree_git_hl = 1

require("nvim-tree").setup {
    open_on_setup = false,
    filters = {
        custom = {
            "node_modules"
        }
    }
}
