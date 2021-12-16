local packer = require("packer")
local use = packer.use

return packer.startup(
    function()
        -- Core
        use {
            "wbthomason/packer.nvim",
            event = "VimEnter"
        }

        use { "lewis6991/impatient.nvim" }

        -- LSP and autocompletion
        use {
            "hrsh7th/nvim-cmp",
            requires = {
                -- LSP
                "neovim/nvim-lspconfig",

                -- Miscellaneous
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "onsails/lspkind-nvim"
            },
            config = function ()
                require "plugins.configs.completion"
            end
        }

        use {
            "rafamadriz/friendly-snippets",
            event = "InsertEnter"
        }

        use {
            "L3MON4D3/LuaSnip",
            wants = "friendly-snippets",
            after = "nvim-cmp",
            config = function ()
                require("luasnip/loaders/from_vscode").load { path = "~/.local/share/nvim/site/pack/packer/opt/friendly-snippets" }
                require("luasnip/loaders/from_vscode").load()
            end
        }

        use {
            "williamboman/nvim-lsp-installer",
            after = "nvim-cmp",
            config = function ()
                require "plugins.configs.lspconfig"
            end
        }

        -- Git
        use {
            "lewis6991/gitsigns.nvim",
            config = function()
                require("gitsigns").setup{}
            end
        }

        -- GUI Plugins
        use { "akinsho/nvim-bufferline.lua" }

        use {
            "glepnir/galaxyline.nvim",
            config = function()
                require "plugins.configs.statusline"
            end
        }

        use {
            "glepnir/dashboard-nvim",
            config = function()
                require "plugins.configs.dashboard"
            end
        }

        use {
            "kyazdani42/nvim-tree.lua",
            config = function()
                require "plugins.configs.nvim-tree"
            end
        }

        use {
            "nvim-telescope/telescope.nvim",
            requires = {{ "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" }},
            config = function()
                require "plugins.configs.telescope"
            end
        }

        use {
            "kyazdani42/nvim-web-devicons",
            config = function()
                require "plugins.configs.devicons"
            end
        }

        -- Miscellaneous
        use {
            "norcalli/nvim-base16.lua",
            requires = {{ "norcalli/nvim.lua" }}
        }

        use {
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate",
            config = function ()
                require("nvim-treesitter.configs").setup {
                    highlight = {
                        enable = true
                    }
                }
            end
        }

        use {
            "norcalli/nvim-colorizer.lua",
            event = "BufRead",
            config = function ()
                require("colorizer").setup({ "*" }, {
                    RGB = true,
                    RRGGBB = true,
                    css = true,

                    mode = "background"
                })
                vim.cmd "ColorizerReloadAllBuffers"
            end
        }

        use {
            "lukas-reineke/indent-blankline.nvim",
            config = function ()
                require("indent_blankline").setup {
                    filetype_exclude = {
                        "dashboard",
                        "packer",
                        "TelescopePrompt",
                        "TelescopeResults"
                    }
                }
                end
        }

        use {
            "LionC/nest.nvim",
            config = function ()
                require "plugins.configs.nest"
            end
        }

        use {
            "rcarriga/nvim-notify",
            config = function ()
                vim.notify = require "notify"
                require("notify").setup({
                    icons = {
                        ERROR = "",
                        WARN = "",
                        INFO = "",
                        DEBUG = "",
                        TRACE = "",
                    },
                })
            end
        }

        use {
            "github/copilot.vim",
            event = "BufEnter",
            config = function ()
                vim.g.copilot_no_tab_map = true
                vim.g.copilot_assume_mapped = true
            end
        }

        use { "elkowar/yuck.vim" }
        use { "voldikss/vim-floaterm" }
        use { "cohama/lexima.vim" }
        use { "andweeb/presence.nvim" }
    end
)
