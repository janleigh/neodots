local packer = require("packer")
local use = packer.use

return packer.startup(
    function()
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
            end
        }

        -- GUI Plugins
        use { "akinsho/nvim-bufferline.lua" }

        use {
            "glepnir/galaxyline.nvim",
            config = function()
                require "plugins.statusline"
            end
        }

        use {
            "glepnir/dashboard-nvim",
            config = function()
                require "plugins.dashboard"
            end
        }

        use {
            "kyazdani42/nvim-tree.lua",
            config = function()
                require "plugins.nvim-tree"
            end
        }

        use {
            "nvim-telescope/telescope.nvim",
            requires = {{ "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" }},
            config = function()
                require "plugins.telescope"
            end
        }

        use {
            "kyazdani42/nvim-web-devicons",
            config = function()
                require "plugins.icons"
            end
        }

        -- Miscellaneous
        use {
            "norcalli/nvim-base16.lua",
            requires = {{ "norcalli/nvim.lua" }}
        }

        use { "voldikss/vim-floaterm" }

        use { "jiangmiao/auto-pairs" }

        use { "tweekmonster/startuptime.vim" }
    end
)
