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
            vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { desc = "LSP: ".."[R]e[n]ame" })
            vim.keymap.set("n", "<leader>lR", vim.lsp.buf.rename, { desc = "[L]SP [R]ename" })
            vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "LSP: ".."[G]oto [D]eclaration" })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: ".."[C]ode [A]ction" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP: ".."Hover Documentation" })
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
