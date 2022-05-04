local present, nt = pcall(require, "nvim-tree")
if not present then
    return
end

local g = vim.g
g.nvim_tree_add_trailing = 0
g.nvim_tree_highlight_opened_files = 0

nt.setup({
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_ft_on_setup  = {},
    open_on_tab = false,
    hijack_cursor = false,
    update_cwd = true,
    view = {
        hide_root_folder = true,
        number = false,
        relativenumber = false,
        signcolumn = "yes"
    },
    git = {
        enable = true
    },
    renderer = {
        indent_markers = {
            enable = true
        }
    },
    actions = {
        change_dir = {
            enable = false
        },
        open_file = {
            quit_on_open = true
        }
    }
})
