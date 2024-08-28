vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { silent = true, desc = "Move up window" })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { silent = true, desc = "Move down window" })
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { silent = true, desc = "Move left window" })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { silent = true, desc = "Move right window" })
vim.keymap.set('n', '<Leader>x', ':q<CR>', { desc = "Close window" })
vim.keymap.set('n', '<C-\\>', ':vsp<CR>', { desc = "Split screen" })
vim.keymap.set('n', '<C-Up>', '<C-Y>', { noremap = true, desc = "Scroll up" })
vim.keymap.set('n', '<C-Down>', '<C-E>', { noremap = true, desc = "Scroll down" })
vim.keymap.set('n', '<Leader>w', ':set wrap! wrap?<CR>', { noremap = true, silent = true, desc = "Toggle text wrap" })

vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = "Save file" })
vim.keymap.set('i', '<C-s>', function()
    local col = vim.fn.col('.') - 1
    local offset = ''
    if col > 0 then
        offset = 'l'
    end
    return '<ESC>' .. offset .. ':w<CR>'
end, { expr = true, desc = "Save file" })

vim.keymap.set('n', '<Leader>r', function()
  vim.opt.relativenumber = not(vim.opt.relativenumber:get())
  if vim.opt.relativenumber:get() then
    print("relative")
  else
    print("absolute")
  end
end, { noremap = true, desc = "Toggle relative line numbers" })
