vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>b", vim.cmd.NvimTreeToggle, { desc = "Toggle file explorer" })
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { silent = true, desc = "Move up window" })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { silent = true, desc = "Move down window" })
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { silent = true, desc = "Move left window" })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { silent = true, desc = "Move right window" })
vim.keymap.set('n', '<C-x>', ':q<CR>', { desc = "Close window" })
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = "Save file" })
vim.keymap.set('i', '<C-x>', '<ESC>:q<CR>', { desc = "Close window" })
vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>i', { desc = "Save file" })
vim.keymap.set('n', '<C-\\>', ':vsp<CR>', { desc = "Split screen" })
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>', { noremap = true, desc = "Exit terminal mode" })
vim.keymap.set('n', '<C-Up>', '<C-Y>', { noremap = true, desc = "Scroll up" })
vim.keymap.set('n', '<C-Down>', '<C-E>', { noremap = true, desc = "Scroll down" })
vim.keymap.set('i', '<CR>', [[coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], { expr = true, silent = true, desc = "Select suggestion" })
vim.keymap.set('n', '<Tab>', ':set wrap! wrap?<CR>', { noremap = true, silent = true, desc = "Toggle text wrap" })

function _G.check_and_delete_word_backwards()
  local col = vim.fn.col('.') - 1
  local line = vim.fn.getline('.')
  local leading_whitespace = string.match(line, '^%s*')
  local leading_whitespace_length = leading_whitespace and #leading_whitespace or 0

  if col > leading_whitespace_length then
    return '<ESC>dbi'
  elseif leading_whitespace_length > 0 then
    return '<ESC>' .. leading_whitespace_length .. 'dhi'
  else
    return ''
  end
end

vim.keymap.set('i', '<C-BS>', _G.check_and_delete_word_backwards, { expr = true, desc = "Delete word backwards" })
vim.keymap.set('i', '<C-Del>', '<ESC>dwi', { desc = "Delete word forwards" })

vim.keymap.set('n', '<Leader><Tab>', ':lua require("buffer_manager.ui").toggle_quick_menu()<CR>', { noremap = true, desc = "Toggle buffer menu" })
vim.keymap.set('n', '<Leader>h', ':lua require("buffer_manager.ui").nav_prev()<CR>', { noremap = true, desc = "Open previous buffer" })
vim.keymap.set('n', '<Leader>l', ':lua require("buffer_manager.ui").nav_next()<CR>', { noremap = true, desc = "Open next buffer" })

function _G.toggle_macro_env()
  if vim.g.coc_enabled == 1 then
    vim.cmd('CocDisable')
    vim.cmd('call CocAction("deactivateExtension", "coc-pairs")')
  else
    vim.cmd('CocEnable')
    vim.cmd("call CocAction('toggleExtension', 'coc-pairs')")
  end
end

vim.keymap.set('n', '<Leader>m', _G.toggle_macro_env, { noremap = true, desc = "Toggle macro env" })
