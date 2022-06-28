local present, nt = pcall(require, "nvim-tree")
if not present then
	return
end

local g = vim.g

nt.setup {
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = false,
	ignore_ft_on_setup = {},
	open_on_tab = false,
	hijack_cursor = false,
	update_cwd = true,
	view = {
		hide_root_folder = true,
		number = false,
		relativenumber = false,
		signcolumn = "yes",
	},
	git = {
		enable = true,
	},
	renderer = {
		add_trailing = false,
		highlight_opened_files = "none",
		indent_markers = {
			enable = false,
		},
	},
	actions = {
		change_dir = {
			enable = false,
		},
		open_file = {
			quit_on_open = true,
		},
	},
}
