local present, nt = pcall(require, "nvim-tree")
if not present then
    return
end

local g = vim.g
g.nvim_tree_git_hl = 1

nt.setup({
    open_on_setup = false,
    filters = {
        custom = {
            "node_modules"
        }
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
