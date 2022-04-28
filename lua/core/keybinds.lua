local nest = require("nest")

nest.applyKeymaps {
    -- Turn off highlight search
    { "<Esc>", "<cmd>noh<CR>", mode = "nv" },
    -- Easier cmd mode
    { ";", ";", mode = "nv" },
    -- Easier escape
    { "jk", "<esc>", mode = "v" },
    { "jk", "<C-c>", mode = "c" },
    -- Enable twilight
    { "<S-t>", "<cmd>Twilight<CR>", mode = "nv" },

    { mode = "n", {
        -- Editor
        { "<C-s>", "<cmd>silent w<CR>" },
        { "<C-z>", "<cmd>u<CR>" },
        { "<C-A-t>", "<cmd>ToggleTerm<CR>" },

        -- Easier Window Navigation
        { "<C-h>", "<C-w>h" },
        { "<C-j>", "<C-w>j" },
        { "<C-k>", "<C-w>k" },
        { "<C-l>", "<C-w>l" },

        -- Easy resizing split windows
        { "<C-S-Up>", "<cmd>:resize +2<CR>" },
        { "<C-S-Down>", "<cmd>:resize -2<CR>" },
        { "<C-S-Left>", "<cmd>:vertical resize +2<CR>" },
        { "<C-S-Right>", "<cmd>:vertical resize -2<CR>" },

        -- Bufferline
        { "<A-q>", "<cmd>:bd!<CR>" },
        { "<S-h>", "<cmd>BufferLineCycleNext<CR>" },
        { "<S-l>", "<cmd>BufferLineCyclePrev<CR>" },

        -- nvim-tree
        { "<C-n>", "<cmd>NvimTreeToggle<CR>" },
        { "<C-S-n>", "<cmd>NvimTreeRefresh<CR>" },

        -- Comment
        { "<Leader>/", ":lua require('Comment.api').toggle_current_linewise()<CR>" },
    }},

    { mode = "v", {
        { "<C-c>", "<cmd>silent w !xclip -i -sel c<CR>" },
        { "<Leader>/", ":lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>" }
    }},

    { mode = "s", {
        { "<C-z>", "<cmd>u<CR>" }
    }},

    { "<Leader>", {
        { "f", {
            { "f", "<cmd>Telescope find_files<CR>" },
            { "n", "<cmd>DashboardNewFile<CR>" },
        }},
        { "g", {
            { "t", "<cmd>Telescope git_status<CR>" }
        }},
        { "q", "<cmd>q!<CR>" }
    }}
}
