function _G.check_and_delete_word_backwards()
  local col = vim.fn.col('.') - 1
  local line = vim.fn.getline('.')
  local leading_whitespace = string.match(line, '^%s*')
  local leading_whitespace_length = leading_whitespace and #leading_whitespace or 0

  if col > leading_whitespace_length then
    return '<ESC>ldbi'
  elseif leading_whitespace_length > 0 then
    return '<ESC>' .. leading_whitespace_length .. 'dhi'
  else
    return ''
  end
end

vim.keymap.set('i', '<C-H>', _G.check_and_delete_word_backwards, { expr = true, desc = "Delete word backwards" })
vim.keymap.set('i', '<C-Del>', '<C-o>dw', { desc = "Delete word forwards" })
vim.keymap.set('n', 'K', ':m -2<CR>', { noremap = true, desc = "Move line up"})
vim.keymap.set('n', 'J', ':m +1<CR>', { noremap = true, desc = "Move line down"})
