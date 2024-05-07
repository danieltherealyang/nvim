require('toggleterm').setup{
  start_in_insert = false
}

vim.g.terminal_mode = ""
vim.g.terminal_open = false;

vim.keymap.set('t', '<C-q>', '<C-\\><C-n>:ToggleTerm<CR>', { silent = true, desc = "Toggle terminal" })
vim.keymap.set('n', '<C-q>', ':ToggleTerm<CR>', { silent = true, desc = "Toggle terminal" })
vim.keymap.set('i', '<C-q>', '<C-\\><C-n>:ToggleTerm<CR>', { silent = true, desc = "Toggle terminal" })
vim.keymap.set('n', '<C-Space>h', ':ToggleTerm direction=horizontal<CR>', { silent = true, desc = "Toggle horizontal terminal" })
vim.keymap.set('n', '<C-Space>f', ':ToggleTerm direction=float<CR>', { silent = true, desc = "Toggle floating terminal" })

