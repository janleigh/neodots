local packer = require("packer")
local use = packer.use

return packer.startup(
    function()
        -- Core
        use {
            "wbthomason/packer.nvim",
            event = "VimEnter"
        }

        use {
            "lewis6991/impatient.nvim",
            config = {
                -- Move to lua dir so impatient.nvim can cache it
                compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua"
            }
        }

        -- LSP and autocompletion
        use {
            "hrsh7th/nvim-cmp",
            requires = {
                -- LSP
                "neovim/nvim-lspconfig",
                "ray-x/lsp_signature.nvim",

                -- Miscellaneous
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "onsails/lspkind-nvim"
            },
            config = function ()
                require "plugins.configs.cmp"
            end
        }

        use {
            "L3MON4D3/LuaSnip",
            requires = {
                "rafamadriz/friendly-snippets"
            },
            after = "nvim-cmp",
            config = function ()
                require("luasnip/loaders/from_vscode").load { path = "~/.local/share/nvim/site/pack/packer/start/friendly-snippets" }
                require("luasnip/loaders/from_vscode").load()
            end
        }

        use {
            "williamboman/nvim-lsp-installer",
            after = "nvim-cmp",
            config = function ()
                local lsp_installer = require("nvim-lsp-installer")

                lsp_installer.on_server_ready(function(server)
                    local opts = {
                        on_attach = on_attach,
                        capabilities = capabilities
                    }

                    local server_opts = {
                        ["sumneko_lua"] = function ()
                            opts.settings = {
                                Lua = {
                                    runtime = {
                                        version = "LuaJIT"
                                    },
                                    diagnostics = {
                                        globals = { "vim" }
                                    },
                                    workspace = {
                                        library = vim.api.nvim_get_runtime_file("", true)
                                    }
                                }
                            }

                            opts.on_attach = on_attach
                            opts.capabilities = capabilities

                            return server_opts
                        end,
                    }
                    server:setup(server_opts[server.name] and server_opts[server.name]() or opts)
                end)
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
        use { "kyazdani42/nvim-web-devicons" }

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
            "lukas-reineke/indent-blankline.nvim",
            config = function ()
                require("indent_blankline").setup {
                    filetype_exclude = {
                        "help",
                        "terminal",
                        "dashboard",
                        "packer",
                        "lspinfo",
                        "TelescopePrompt",
                        "TelescopeResults",
                        "startup-log.txt"
                    }
                }
                end
        }

        use {
            "LionC/nest.nvim",
            config = function ()
                require "plugins.configs.keybinds"
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

        use { "tweekmonster/startuptime.vim" }
        use { "folke/trouble.nvim" }
        use { "cohama/lexima.vim" }
        use { "Pocco81/AutoSave.nvim" }
        use { "numToStr/Comment.nvim" }
        use { "andweeb/presence.nvim" }
    end
)
