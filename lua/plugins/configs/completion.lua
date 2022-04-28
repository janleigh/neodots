local _cmp, cmp = pcall(require, "cmp")
local _kind, kind = pcall(require, "lspkind")
local _luasnip, luasnip = pcall(require, "luasnip")
local _M = {}

if not _cmp then
    return
end

if _luasnip then
    require("luasnip.loaders.from_vscode").lazy_load()
    _M.snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    }
end

if _kind then
    _M.formatting = {
        fields = {"kind", "abbr", "menu"},
        format = kind.cmp_format()
    }
else
    _M.formatting = {
        fields = {"kind", "abbr", "menu"},
        format = function(entry, vim_item)
            vim_item.menu =
            ({
                nvim_lsp = "[LSP]",
                luasnip = "[Snippet]",
                buffer = "[Buffer]",
                path = "[Path]"
            })[entry.source.name]
            return vim_item
        end
    }
end

_M.mapping = {
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping(
        function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif _luasnip and luasnip.expandable() then
                luasnip.expand()
            elseif _luasnip and luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end,
        {"i", "s"}
    ),
    ["<S-Tab>"] = cmp.mapping(
        function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif _luasnip and luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end,
        {"i", "s"}
    ),
    ["<Up>"] = cmp.mapping(
        function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif _luasnip and luasnip.expandable() then
                luasnip.expand()
            elseif _luasnip and luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end,
        {"i", "s"}
    ),
    ["<Down>"] = cmp.mapping(
        function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif _luasnip and luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end,
        {"i", "s"}
    )
}

_M.sources = {
    { name = "nvim_lsp_signature_help" },
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
}

cmp.setup(_M)
