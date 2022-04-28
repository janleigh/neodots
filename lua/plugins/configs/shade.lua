local present, shade = pcall(require, "shade")
if not present then
    return
end

shade.setup({
    keys = {
        toggle = "<Leader>d"
    }
})
