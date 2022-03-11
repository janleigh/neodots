local nest = require("nest")

-- Toggle a terminal buffer
-- Reference: https://github.com/TorchedSammy/dotfiles/blob/70c63458c20eca5f650c1b71c6eae6362aadaadb/.config/nvim/lua/keybinds.lua#L29
_G.openTerm = function(name, side)
	local term = vim.api.nvim_eval(string.format('bufwinnr("%s")', name))
	local buf = vim.api.nvim_eval(string.format('bufexists("%s")', name))

	-- If the term is visible, close it
	if term > 0 then
		-- If it's a side terminal
		if side then
			vim.cmd(tostring(term) .. 'wincmd c')
		else
			vim.cmd 'e #'
		end
	elseif buf > 0 then -- if current buffer isnt term
		if side then vim.cmd 'vsplit' end
		vim.cmd('b ' .. name)
	else -- if term doesnt exist
		if side then vim.cmd 'vsplit' end
		vim.cmd 'term'
		vim.cmd('f ' .. name)
		-- vim.wo.foldcolumn = '1' -- set left padding basically
	end
end

nest.applyKeymaps {
    -- Turn off highlight search
    { "<Esc>", "<cmd>noh<CR>", mode = "nv" },
    -- Easier cmd mode
    { ";", ";", mode = "nv" },
    -- Easier escape
    { "jk", "<esc>", mode = "v" },
    { "jk", "<C-c>", mode = "c" },

    { mode = "n", {
        -- Editor
        { "<C-s>", "<cmd>silent w<CR>" },
        { "<C-z>", "<cmd>u<CR>" },
        { "<F10>", "<cmd>:call v:lua.openTerm('vterminal', v:true)<CR>" },

        -- Easier Window Navigation
        { "<C-h>", "<C-w>h" },
        { "<C-j>", "<C-w>j" },
        { "<C-k>", "<C-w>k" },
        { "<C-l>", "<C-w>l" },

        -- Easy resizing split windows
        { "<C-Up>", "<cmd>:resize +2<CR>" },
        { "<C-Down>", "<cmd>:resize -2<CR>" },
        { "<C-Left>", "<cmd>:vertical resize +2<CR>" },
        { "<C-Right>", "<cmd>:vertical resize -2<CR>" },

        -- Trouble
        { "<C-x>", "<cmd>TroubleToggle<CR>" },

        -- Bufferline
        { "<S-h>", "<cmd>BufferLineCycleNext<CR>" },
        { "<S-l>", "<cmd>BufferLineCyclePrev<CR>" },
        { "<S-q>", "<cmd>bd!<CR>" },

        -- nvim-tree
        { "<C-n>", "<cmd>NvimTreeToggle<CR>" },
        { "<S-n>", "<cmd>NvimTreeRefresh<CR>" },

        -- lspconfig
        { "<Space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>" },
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
