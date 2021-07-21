vim.cmd("packadd packer.nvim")

-- Credits to siduck76/NvChad
local async
async =
    vim.loop.new_async(
    vim.schedule_wrap(
        function ()
            require "plugins"
            require "plugins.bufferline"

            require "highlights"
            require "mappings"
            async:close()
        end
    )
)
async:send()
