local lsp_installer = require("nvim-lsp-installer")

local servers = {
    "rust_analyzer",
    "tsserver",
    "sumneko_lua"
}

-- Sumneko Lua server path.
local sumneko_root_path = vim.fn.stdpath("data") .. "/lsp_servers/sumneko_lua"

lsp_installer.on_server_ready(function (server)
    local opts = {
        on_attach = on_attach,
        capabilities = capabilities
    }

    local server_opts = {
        ["sumneko_lua"] = function ()
            opts.cmd = {
                sumneko_root_path .. "/extension/server/bin/Linux/lua-language-server",
                "-E",
                sumneko_root_path .. "/extension/server/main.lua"
            }
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
	vim.cmd([[ do User LspAttachBuffers ]])
end)
