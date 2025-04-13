require('toggleterm').setup{
    autoscroll = false,
}

vim.keymap.set('t', '<C-q>', [[<C-\><C-n><CMD>ToggleTerm<CR>]], { silent = true, desc = "Toggle terminal" })
vim.keymap.set('n', '<C-q>', [[<CMD>ToggleTerm<CR>]], { silent = true, desc = "Toggle terminal" })
vim.keymap.set('i', '<C-q>', [[<C-\><C-n><CMD>ToggleTerm<CR>]], { silent = true, desc = "Toggle terminal" })
vim.keymap.set('n', '<C-Space>h', [[<CMD>ToggleTerm direction=horizontal<CR>]], { silent = true, desc = "Toggle horizontal terminal" })
vim.keymap.set('n', '<C-Space>f', [[<CMD>ToggleTerm direction=float<CR>]], { silent = true, desc = "Toggle floating terminal" })
vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]], { silent = true, desc = "Exit terminal mode" })
