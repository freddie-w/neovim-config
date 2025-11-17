-- General
vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Remap jj to escape' })
vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>', { desc = 'Show the file tree' })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Press escape to exit terminal mode' })

-- Navigation
vim.keymap.set('n', '<leader>o', '<C-o>', { desc = 'Jump back' })
vim.keymap.set('n', '<leader>i', '<C-i>', { desc = 'Jump forward' })

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<Tab>', '<C-w>w', { desc = 'Move focus to the next window' })
vim.keymap.set('n', '<S-Tab>', '<C-w>W', { desc = 'Move focus to the previous window' })

-- Window splitting
vim.keymap.set('n', '<leader>nw-', function()
  vim.cmd 'split'
  require('telescope.builtin').find_files()
end, { desc = 'Split window horizontally and open telescope to search for a file' })

vim.keymap.set('n', '<leader>nw|', function()
  vim.cmd 'vsplit'
  require('telescope.builtin').find_files()
end, { desc = 'Split window vertically and open telescope to search for a file' })

-- With terminal
vim.keymap.set('n', '<leader>nwt-', function()
  vim.cmd 'split | terminal'
end, { desc = 'Split window horizontally and open terminal' })

vim.keymap.set('n', '<leader>nwt|', function()
  vim.cmd 'vsplit | terminal'
end, { desc = 'Split window vertically and open terminal' })

-- Window management
vim.keymap.set('n', '<leader>cw', ':close<CR>', { desc = 'Close the current window' })
vim.keymap.set('n', '<leader>mwh', '<C-w>H', { desc = 'Move window left' })
vim.keymap.set('n', '<leader>mwj', '<C-w>J', { desc = 'Move window down' })
vim.keymap.set('n', '<leader>mwk', '<C-w>K', { desc = 'Move window up' })
vim.keymap.set('n', '<leader>mwl', '<C-w>L', { desc = 'Move window right' })

-- Resize windows
vim.keymap.set('n', '<leader>wh', '<C-w><', { desc = 'Shrink window horizontally' })
vim.keymap.set('n', '<leader>wl', '<C-w>>', { desc = 'Grow window horizontally' })
vim.keymap.set('n', '<leader>wk', '<C-w>+', { desc = 'Grow window vertically' })
vim.keymap.set('n', '<leader>wj', '<C-w>-', { desc = 'Shrink window vertically' })
