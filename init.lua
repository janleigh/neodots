require "core.options"
require "impatient"

local async
async = vim.loop.new_async(
        vim.schedule_wrap(
            function ()
                require "plugins.init"
                require "plugins.configs.nvim_bufferline"
                require "theme.init"
                async:close()
            end
        )
)
async:send()
