local treesitter_conf = {
    ensure_installed = {"lua", "python", "vimdoc", "c", "cpp", "rust", "javascript", "typescript"},
    sync_install = false,
    ignore_install = {""},
    highlight = {
        enable = true,
        disable = {""},
        additional_vim_regex_highlighting = true
    },
    indent = {
        enable = true,
        disable = {""}
    },
}
return {
    "nvim-treesitter/nvim-treesitter",
    name = "treesitter",
    build = ":TSUpdate",
    lazy = false,
    priority = 998,
    config = function()
        local conf = require("nvim-treesitter.configs")
        conf.setup(treesitter_conf)
    end
}
