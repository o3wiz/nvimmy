return {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    enabled = false,
    config = function()
        require("rose-pine").setup({
            disable_background = true,
            styles = {
                italic = false,
            },
        })
        vim.cmd.colorscheme "rose-pine"
        vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
        vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    end,
}
