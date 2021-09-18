local packer = require("packer")
local use = packer.use

return packer.startup(
    function()
        use { "lewis6991/impatient.nvim" }

        use {
            "wbthomason/packer.nvim",
            event = "VimEnter"
        }

        -- Programming Languages
        use {
            "neoclide/coc.nvim",
            branch = "release",
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

        use { "elkowar/yuck.vim" }

        use { "voldikss/vim-floaterm" }

        use { "jiangmiao/auto-pairs" }

        use { "tweekmonster/startuptime.vim" }
    end
)
