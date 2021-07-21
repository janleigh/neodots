local packer = require("packer")
local use = packer.use

return packer.startup(
    function()
        use { "wbthomason/packer.nvim", event = "VimEnter" }

        -- LSP
        use {
            "neovim/nvim-lspconfig",
            config = function()
                require "plugins.lspconfig"
            end
        }

        use { "onsails/lspkind-nvim" }

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
    end
)
