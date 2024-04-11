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
                }
            }
        }
        require("telescope").setup(settings)
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
        vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
    end
}
