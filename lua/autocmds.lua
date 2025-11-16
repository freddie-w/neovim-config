-- Only run after an LSP client attaches to a buffer
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf

    local opts = { noremap = true, silent = true, buffer = bufnr }

    -- Go to definition
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  end,
})

--- Create a darker background for inactive windows.
vim.api.nvim_set_hl(0, 'InactiveWindow', { bg = '#13131c' })

-- Active window: normal highlight
vim.api.nvim_create_autocmd({ 'WinEnter', 'BufEnter' }, {
  callback = function()
    vim.wo.winhighlight = 'Normal:Normal,NormalNC:Normal'
  end,
})

-- Inactive window: use dim background
vim.api.nvim_create_autocmd({ 'WinLeave', 'BufLeave' }, {
  callback = function()
    vim.wo.winhighlight = 'Normal:InactiveWindow,NormalNC:InactiveWindow'
  end,
})

-- Highlight when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
