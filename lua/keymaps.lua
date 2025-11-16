-- General
vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Remap jj to escape' })
vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>', { desc = 'Show the file tree' })

-- Navigation
vim.keymap.set('n', '<leader>o', '<C-o>', { desc = 'Jump back' })
vim.keymap.set('n', '<leader>i', '<C-i>', { desc = 'Jump forward' })

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.api.nvim_set_keymap('n', '<Tab>', '<C-w>w', { desc = 'Move focus to the next window' })
vim.api.nvim_set_keymap('n', '<S-Tab>', '<C-w>W', { desc = 'Move focus to the previous window' })

-- Window management
vim.api.nvim_set_keymap('n', '<leader>nw-', ':split<CR>', { desc = 'Split window horizontally' })
vim.api.nvim_set_keymap('n', '<leader>nw|', ':vsplit<CR>', { desc = 'Split window vertically' })
vim.api.nvim_set_keymap('n', '<leader>cw', ':close<CR>', { desc = 'Close the current window' })
vim.keymap.set('n', '<leader>mwh', '<C-w>H', { desc = 'Move window left' })
vim.keymap.set('n', '<leader>mwj', '<C-w>J', { desc = 'Move window down' })
vim.keymap.set('n', '<leader>mwk', '<C-w>K', { desc = 'Move window up' })
vim.keymap.set('n', '<leader>mwl', '<C-w>L', { desc = 'Move window right' })
