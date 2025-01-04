local function cmd(command)
   return table.concat({ '<Cmd>', command, '<CR>' })
end

vim.keymap.set('n', '<Leader>+', cmd 'WindowsMaximize', { desc = "Windows maximize"})
vim.keymap.set('n', '<Leader>_', cmd 'WindowsMaximizeVertically', { desc = "Windows vertical maximize" })
vim.keymap.set('n', '<Leader>|', cmd 'WindowsToggleAutowidth', { desc = "Windows toggle resizing" })
vim.keymap.set('n', '<Leader>=', cmd 'WindowsEqualize', { desc = "Windows communism" })
