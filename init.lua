require "options"

local async
async =
    vim.loop.new_async(
        vim.schedule_wrap(
            function ()
                require "plugins.init"
                require "plugins.configs.bufferline"

                require "theme.init"

                async:close()
            end
        )
)
async:send()
