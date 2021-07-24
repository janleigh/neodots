local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end

    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {  }

vim.cmd([[
    inoremap <silent><expr> <c-space> coc#refresh()
]])

-- ESC for turning off highlight search
map("n", "<Esc>", ":noh<CR>", opt)

-- Split windows
map("n", "<C-a>", ":vsplit<CR>", opt)
map("n", "<C-s>", ":split<CR>", opt)

-- Bufferline
map("n", "<S-TAB>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-c>", ":bd!<CR>", opt)

-- Dashboard
map("n", "<Leader>fn", ":DashboardNewFile<CR>", opt)
map("n", "<Leader>q", ":q!<CR>", opt)

-- Floaterm
map("n", "<Leader>tn", ":FloatermNew --height=0.6 --width=0.4 --position=topright<CR>", opt)
map("n", "<Leader>tf", ":FloatermKill!<CR>", opt)
map("n", "<Leader>tt", ":FloatermToggle<CR>", opt)

-- nvim-tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", opt)
map("n", "<F6>", ":NvimTreeRefresh<CR>", opt)

-- Telescope
map("n", "<Leader>ff", ":Telescope find_files<CR>", opt)
map("n", "<Leader>gt", ":Telescope git_status<CR>", opt)
