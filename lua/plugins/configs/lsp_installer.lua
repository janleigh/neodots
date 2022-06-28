local present, lspi = pcall(require, "nvim-lsp-installer")
if not present then
	return
end

lspi.on_server_ready(function(server)
	local opts = {
		--- @diagnostic disable-next-line: undefined-global
		on_attach = on_attach,
		--- @diagnostic disable-next-line: undefined-global
		capabilities = capabilities,
	}

	local server_opts = {
		["sumneko_lua"] = function()
			opts.settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
				},
			}

			--- @diagnostic disable-next-line: undefined-global
			opts.on_attach = on_attach
			--- @diagnostic disable-next-line: undefined-global
			opts.capabilities = capabilities

			--- @diagnostic disable-next-line: undefined-global
			return server_opts
		end,
	}
	server:setup(server_opts[server.name] and server_opts[server.name]() or opts)
end)
