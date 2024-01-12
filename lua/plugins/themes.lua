return {
  {
    "sainnhe/gruvbox-material",
  },
  {
    "zivyangll/git-blame.vim",
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "projekt0n/github-nvim-theme",
  },
  {
    "tribela/vim-transparent",
  },
  {
    "luisiacc/gruvbox-baby",
  },
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "darker",
      transparent = true,
      code_style = {
        comments = "italic",
      },
      lualine = {
        transparent = true, -- lualine center bar transparency
      },
    },
  },
  {
    "catppuccin/nvim",
    as = "catppuccin",
  },
  { "ellisonleao/gruvbox.nvim" },
  {
    "loctvl842/monokai-pro.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox-baby",
      colorscheme = "gruvbox",
    },
  },
}
