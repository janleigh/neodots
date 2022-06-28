local present, packer = pcall(require, "packer")
if not present then
	return
end

local use = packer.use

return packer.startup(function()
	-- Core
	use {
		"wbthomason/packer.nvim",
		event = "VimEnter",
	}

	use {
		"lewis6991/impatient.nvim",
		config = {
			-- Move to lua dir so impatient.nvim can cache it
			compile_path = vim.fn.stdpath "config" .. "/lua/packer_compiled.lua",
		},
	}

	-- LSP and autocompletion
	use {
		"hrsh7th/nvim-cmp",
		requires = {
			"neovim/nvim-lspconfig",
			"ray-x/lsp_signature.nvim",

			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"onsails/lspkind-nvim",
		},
		config = function()
			require "plugins.configs.completion"
		end,
	}

	use {
		"L3MON4D3/LuaSnip",
		requires = "rafamadriz/friendly-snippets",
	}

	use {
		"williamboman/nvim-lsp-installer",
		after = "nvim-cmp",
		config = function()
			require "plugins.configs.lsp_installer"
		end,
	}

	-- Git
	use { "lewis6991/gitsigns.nvim" }

	-- GUI Plugins
	use { "akinsho/bufferline.nvim", tag = "*" }
	use { "kyazdani42/nvim-web-devicons" }

	use {
		"glepnir/galaxyline.nvim",
		config = function()
			require "plugins.configs.statusline"
		end,
	}

	use {
		"glepnir/dashboard-nvim",
		config = function()
			require "plugins.configs.dashboard"
		end,
	}

	use {
		"kyazdani42/nvim-tree.lua",
		config = function()
			require "plugins.configs.nvim_tree"
		end,
	}

	use {
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
		config = function()
			require "plugins.configs.telescope"
		end,
	}

	-- Miscellaneous
	use { "cohama/lexima.vim" }
	use { "numToStr/Comment.nvim" }
	use { "andweeb/presence.nvim" }
	use { "elkowar/yuck.vim" }

	use {
		"norcalli/nvim-base16.lua",
		requires = { { "norcalli/nvim.lua" } },
	}

	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require "plugins.configs.treesitter"
		end,
	}

	use {
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require "plugins.configs.indent_blankline"
		end,
	}

	use {
		"LionC/nest.nvim",
		config = function()
			require "core.keybinds"
		end,
	}

	use {
		"github/copilot.vim",
		event = "BufEnter",
		config = function()
			require "plugins.configs.copilot"
		end,
	}

	use {
		"folke/twilight.nvim",
		config = function()
			require "plugins.configs.twilight"
		end,
	}

	use {
		"rcarriga/nvim-notify",
		config = function()
			require "plugins.configs.notify"
		end,
	}

	use {
		"akinsho/toggleterm.nvim",
		config = function()
			require "plugins.configs.terminal"
		end,
	}
end)
