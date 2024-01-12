local lualine_gruvbox = require("lualine.themes.gruvbox")
return {
  require("lualine").setup({
    options = { theme = lualine_gruvbox },
  }),
}
