-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- fetch keymap
local map = vim.api.nvim_set_keymap

-- Increase or decrease split size using Option key (Alt)
map("n", "<M-g>", ":GitBlame<CR>", { silent = true })

-- Increase or decrease split size using Option key (Alt)
map("n", "<M-S-Left>", ":vertical resize +5<CR>", { silent = true })
map("n", "<M-S-Right>", ":vertical resize -5<CR>", { silent = true })
map("n", "<M-S-Up>", ":resize +5<CR>", { silent = true })
map("n", "<M-S-Down>", ":resize -5<CR>", { silent = true })
map("n", "<M-Left>", ":Telescope lsp_incoming_calls show_line=false<CR>", { silent = true })
map("n", "<M-Right>", ":Telescope lsp_outgoing_calls show_line=false<CR>", { silent = true })
map("n", "<M-Up>", ":Telescope lsp_references show_line=false<CR>", { silent = true })
map("n", "<M-Down>", ":Telescope lsp_definitions show_line=false<CR>", { silent = true })
map(
  "n",
  "<leader>ss",
  ":lua require('telescope.builtin').lsp_document_symbols({ symbol_width = 60 })<CR>",
  { noremap = true, silent = true }
)
map(
  "n",
  "<leader>sS",
  ":lua require('telescope.builtin').lsp_dynamic_workspace_symbols({ fname_width=130 })<CR>",
  { noremap = true, silent = true }
)

map(
  "n",
  "<M-/>",
  "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>'), hidden = true })<CR>",
  { noremap = true, silent = true }
)

map("n", "<M-c>", "<cmd>lua require('telescope.builtin').git_bcommits()<CR>", { noremap = true, silent = true })

-- Define a key mapping for opening definitions in a new split
map(
  "n",
  "<leader><Down>",
  ':vsp | execute "normal! zv" | :Telescope lsp_definitions show_line=false<CR>',
  { noremap = true, silent = true }
)

-- Normal mode mappings ==> d = delete
vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "D", '"_D', { noremap = true, silent = true })

-- Close current buffer
vim.api.nvim_set_keymap("n", "<S-Down>", ":bd<CR>", { noremap = true, silent = true })

-- Go to next buffer
vim.api.nvim_set_keymap("n", "<S-Right>", ":bn<CR>", { noremap = true, silent = true })

-- Go to previous buffer
vim.api.nvim_set_keymap("n", "<S-Left>", ":bp<CR>", { noremap = true, silent = true })


-- Custom mappings using leader key ==> leader d = cut
vim.api.nvim_set_keymap("n", "<leader>d", '""d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>D", '""D', { noremap = true, silent = true })

-- Visual mode mapping
vim.api.nvim_set_keymap("v", "<leader>d", '""d', { noremap = true, silent = true })
