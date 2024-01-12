-- Add suuport for emoji
return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
      {
        name = "emoji",
      },
      {
        name = "nvim_cmdline",
        option = {
          completion = "dropdown",
          keyword_length = 2, -- Adjust the minimum length as desired
        },
      },
    }))
  end,
}
