local lualine_settings = {
  options = {
    theme = "auto",
    globalstatus = true,
    section_separators = { left = "", right = ""},
  },
  sections = {
    lualine_a = {
      { 'mode', fmt = function(str) return str:sub(1,1) end }
    },
    lualine_b = {"buffers"},
    lualine_c = {"branch", "diff", "diagnostics"},
    lualine_x = {},
    lualine_y = {"filename", "filetype"},
    lualine_z = {"progress"},
  },
}
return {
  'nvim-lualine/lualine.nvim',
  name = "lualine",
  dependencies = {'nvim-tree/nvim-web-devicons'},
  lazy = false,
  priority = 1001,
  config = function()
    require("lualine").setup(lualine_settings)
  end
}
