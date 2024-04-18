return {
    "williamboman/mason.nvim",
    name = "mason",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        mason.setup({})
        mason_lspconfig.setup({
            ensure_installed = {
                "clangd", -- for c and c++
                "pyright", -- for python
                "rust_analyzer", -- for rust language
                "tsserver" -- for javascript and typescript
            },
            automatic_installation = true,
        })
    end,
}
