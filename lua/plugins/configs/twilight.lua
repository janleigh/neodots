local present, twilight = pcall(require, "twilight")
if not present then
    return
end

twilight.setup({
    exclude = {
        "NvimTree",
        "dashboard",
        "TelescopePrompt",
        "TelescopeResults",
    }
})
