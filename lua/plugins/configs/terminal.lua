local present, term = pcall(require, "toggleterm")
if not present then
    return
end

term.setup({
    size = 70,
    shade_terminals = false,
    direction = "float",
    float_opts = {
        winblend = 0
    },
})
