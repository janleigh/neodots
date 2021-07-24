require "options"

local async
async =
    vim.loop.new_async(
    vim.schedule_wrap(
        function ()
            require "theme"

            require "plugins"
            require "plugins.bufferline"

            require "mappings"
            async:close()
        end
    )
)
async:send()
