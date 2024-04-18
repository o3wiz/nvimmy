return {
    "neovim/nvim-lspconfig",
    name = "lspconfig",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true }, -- renaming file changes imports
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local opts = {noremap = true, silent = true}
        local on_attach = function(client, bufnr)
            -- TODO: set keymaps!
        end
        local capabilities = cmp_nvim_lsp.default_capabilities()
        local signs = { Error = "E", Warn = "W", Hint = "H", Info = "I" }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end
        lspconfig["clangd"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig["rust_analyzer"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig["tsserver"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig["gopls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
    end,
}
