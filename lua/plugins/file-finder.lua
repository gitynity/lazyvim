vim.opt.background = "dark" -- set this for oxocarbon theme

return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-live-grep-args.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("live_grep_args")
      end,
      --[[ to invoke ==> :lua require("telescope").extensions.live_grep_args.live_grep_args()
       once the telescope is opened then type the search term in "" and following arguements
       --type go // to only search in go files , --type-not go, similarly
       -g "*.foo" to search in files with names ending with .foo // 
       similarly -g '!.foo'
      --]]
    },
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "bottom_pane",
        sorting_strategy = "ascending",
        winblend = 0,
        wrap_results = true,
      },
    },
  },
}
