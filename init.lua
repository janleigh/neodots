require "core.options"
-- Uncomment me when first installing this config.
-- Run :PackerSync and uncomment me after installation.
require "impatient"

local async
async = vim.loop.new_async(
        vim.schedule_wrap(
            function ()
                require "theme.init"
                require "plugins.init"
                require "plugins.configs.nvim-bufferline"
                async:close()
            end
        )
)
async:send()
