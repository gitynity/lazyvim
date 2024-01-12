return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      theme = "hyper",
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          {
            icon = " ",
            icon_hl = "@variable",
            desc = "Files",
            group = "@property",
            action = "Telescope find_files",
            key = "f",
          },
          {
            icon = " ",
            icon_hl = "@variable",
            desc = "Grep",
            group = "@property",
            action = "Telescope live_grep",
            key = "g",
          },
          {
            icon = " ",
            icon_hl = "@variable",
            desc = "Recent Files",
            group = "@property",
            action = "Telescope oldfiles",
            key = "r",
          },
          { desc = "󰊳 Update", group = "Label", action = "Lazy update", key = "u" },
          {
            desc = " Quit",
            group = "Label",
            action = function()
              vim.cmd("q")
            end,
            key = "q",
          },
        },
      },
    }) --  config used for theme
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
