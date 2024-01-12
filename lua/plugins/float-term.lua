vim.api.nvim_set_keymap("n", "<leader>t", ":FloatermNew! cd %:p:h<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader><leader>t", ":FloatermToggle<CR>", { silent = true })
return {
  "voldikss/vim-floaterm",
}
