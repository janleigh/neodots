local present, indent_blankline = pcall(require, "indent_blankline")
if not present then
    return
end

indent_blankline.setup({
    filetype_exclude = {
        "help",
        "terminal",
        "dashboard",
        "packer",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "startup-log.txt"
    },
    show_current_context = true,
    show_current_context_start = true
})
