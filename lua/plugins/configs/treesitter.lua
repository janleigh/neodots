local present, treesitter = pcall(require, "nvim-treesitter.configs")
if not present then
    return
end

treesitter.setup({
    autotag = { enable = true },
    autopairs = { enable = true },
    highlight = {
        enable = true
    },
    indent = {
        enable = true,
        disable = {
            "yaml"
        }
    },
})
