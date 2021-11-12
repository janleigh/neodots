local nest = require("nest")

nest.applyKeymaps {
    { mode = "n", {
        -- Turn off highlight search
        { "<Esc>", ":noh<CR>" },

        -- Split windows
        { "<C-a>", ":vsplit<CR>" },
        { "<C-s>", ":split<CR>" },

        -- Bufferline
        { "<Tab>", ":BufferLineCycleNext<CR>" },
        { "<C-c>", ":bd!<CR>" },

        -- nvim-tree
        { "<C-n>", ":NvimTreeToggle<CR>" },
        { "<S-n>", ":NvimTreeRefresh<CR>" },

        -- lspconfig
        { "<Space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>" }
    }},

    { mode = "v", {
        { "<Esc>", ":noh<CR>" },
        { "<C-y>", ":w !xclip -i -sel c<CR>" }
    }},

    { "<Leader>", {
        { "t", {
            { "n", ":FloatermNew --height=0.6 --width=0.4 --position=topright<CR>" },
            { "f", ":FloatermKill!<CR>" },
            { "t", ":FloatermToggle<CR>" },
            { "a", ":vsplit term://zsh<CR>" },
            { "c", ":split term://zsh<CR>" }
        }},
        { "f", {
            { "f", ":Telescope find_files<CR>" },
            { "n", ":DashboardNewFile<CR>" },
        }},
        { "g", {
            { "t", ":Telescope git_status<CR>" }
        }},
        { "q", ":q!<CR>" }
    }}
}
