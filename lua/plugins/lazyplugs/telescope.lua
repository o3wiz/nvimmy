return {
    "nvim-telescope/telescope.nvim",
    name = "telescope",
    lazy = false,
    priority = 999,
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
        local actions = require("telescope.actions")
        local settings = {
            defaults = {
                prompt_prefix = " ",
                selection_caret = "󱞪 ",
                mappings = {
                    i = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous
                    }
                }
            },
            pickers = {
                find_files = {
                    theme = "dropdown",
                    previewer = false,
                    hidden = true
                },
                live_grep = {
                    theme = "dropdown",
                    previewer = false,
                },
                find_buffers = {
                    theme = "dropdown",
                    previewer = false,
                },
                help_tags = {
                    theme = "dropdown",
                    previewer = false,
                }
            }
        }
        require("telescope").setup(settings)
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>pf", builtin.find_files, {desc = "[P]roject [F]iles"})
        vim.keymap.set("n", "<leader>pg", builtin.live_grep, {desc = "[P]roject [G]rep"})
        vim.keymap.set("n", "<leader>pb", builtin.buffers, {desc = "[P]roject [B]uffers"})
        vim.keymap.set("n", "<leader>ht", builtin.help_tags, {desc = "[H]elp [T]ags"})
        vim.keymap.set("n", "<leader>lgT", builtin.lsp_type_definitions, {desc = "[L]SP [G]oto [T]ype definitions"})
        vim.keymap.set("n", "<leader>lgd", builtin.lsp_definitions, {desc = "[L]SP [G]oto [D]efinitions"})
        vim.keymap.set("n", "<leader>lgr", builtin.lsp_references, {desc = "[L]SP [G]oto [R]eferences"})
        vim.keymap.set("n", "<leader>lgI", builtin.lsp_implementations, {desc = "[L]SP [G]oto [I]mplementations"})
        vim.keymap.set("n", "<leader>lds", builtin.lsp_document_symbols, { desc = "[L]SP [D]ocument [S]ymbols" })
        vim.keymap.set("n", "<leader>lws", builtin.lsp_dynamic_workspace_symbols, { desc = "[L]SP [W]orkspace [S]ymbols" })
    end
}
