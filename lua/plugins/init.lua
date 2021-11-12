local packer = require("packer")
local use = packer.use

return packer.startup(
    function()
        -- Core
        use {
            "lewis6991/impatient.nvim",
            config = {
                -- Move to lua dir so impatient.nvim can cache it
                compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua"
            }
        }

        use {
            "wbthomason/packer.nvim",
            event = "VimEnter"
        }

        use { "neovim/nvim-lspconfig" }

        use {
            "williamboman/nvim-lsp-installer",
            config = function ()
                require "plugins.configs.lspconfig"
            end
        }

        use {
            "rafamadriz/friendly-snippets",
            event = "InsertEnter"
        }

        use {
            "hrsh7th/nvim-cmp",
            config = function ()
                require "plugins.configs.completion"
            end,
            after = "friendly-snippets"
        }

        use {
            "L3MON4D3/LuaSnip",
            wants = "friendly-snippets",
            after = "nvim-cmp",
            config = function ()
                local luasnip = require("luasnip")

                require("luasnip/loaders/from_vscode").load { path = "~/.local/share/nvim/site/pack/packer/opt/friendly-snippets" }
                require("luasnip/loaders/from_vscode").load()
            end
        }

        use {
            "hrsh7th/cmp-nvim-lsp",
            after = "nvim-cmp"
        }

        use {
            "hrsh7th/cmp-nvim-lua",
            after = "cmp-nvim-lsp"
        }

        use {
            "hrsh7th/cmp-buffer",
            after = "cmp-nvim-lua"
        }

        use {
            "hrsh7th/cmp-path",
            after = "cmp-buffer"
        }

        use {
            "onsails/lspkind-nvim"
        }

        -- Git
        use {
            "lewis6991/gitsigns.nvim",
            config = function()
                require("gitsigns").setup{}
            end,
            opt = true
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

        use { "elkowar/yuck.vim" }
        use { "voldikss/vim-floaterm" }
        use { "windwp/nvim-autopairs" }
        use { "tweekmonster/startuptime.vim" }
    end
)
