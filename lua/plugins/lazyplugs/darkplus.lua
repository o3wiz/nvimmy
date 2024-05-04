return {
    "lunarvim/darkplus.nvim",
    name = "darkplus",
    lazy = false,
    config = function()
        require("darkplus").setup({})
        vim.cmd.colorscheme "darkplus"
    end
}
