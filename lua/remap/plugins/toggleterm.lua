require('toggleterm').setup{
    autoscroll = false,
}

vim.keymap.set('t', '<C-q>', '<C-\\><C-n>:ToggleTerm<CR>', { silent = true, desc = "Toggle terminal" })
vim.keymap.set('n', '<C-q>', ':ToggleTerm<CR>', { silent = true, desc = "Toggle terminal" })
vim.keymap.set('i', '<C-q>', '<C-\\><C-n>:ToggleTerm<CR>', { silent = true, desc = "Toggle terminal" })
vim.keymap.set('n', '<C-Space>h', ':ToggleTerm direction=horizontal<CR>', { silent = true, desc = "Toggle horizontal terminal" })
vim.keymap.set('n', '<C-Space>f', ':ToggleTerm direction=float<CR>', { silent = true, desc = "Toggle floating terminal" })
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>', { noremap = true, desc = "Exit terminal mode" })
