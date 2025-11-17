local M = {}

-- Enter "resize mode"
function M.enter()
  local opts = { noremap = true, silent = true }

  vim.api.nvim_buf_set_keymap(0, 'n', 'h', '<C-w><2', opts) -- shrink width left
  vim.api.nvim_buf_set_keymap(0, 'n', 'l', '<C-w>>2', opts) -- grow width right
  vim.api.nvim_buf_set_keymap(0, 'n', 'k', '<C-w>+2', opts) -- grow height (up)
  vim.api.nvim_buf_set_keymap(0, 'n', 'j', '<C-w>-2', opts) -- shrink height (down)
  vim.api.nvim_buf_set_keymap(0, 'n', '=', '<C-w>=2', opts) -- equal windows

  -- Exit resize mode with Esc, Enter
  -- TODO also handle tab somehow
  vim.api.nvim_buf_set_keymap(0, 'n', '<Esc>', '<Cmd>lua require("custom-plugins.resize-mode").exit()<CR>', opts)
  vim.api.nvim_buf_set_keymap(0, 'n', '<CR>', '<Cmd>lua require("custom-plugins.resize-mode").exit()<CR>', opts)

  vim.notify 'Window Resize Mode: h/l/k/j/= to resize, Esc or Enter to exit'
end

-- Exit "resize mode"
function M.exit()
  local keys = { 'h', 'l', 'k', 'j', '<Esc>' }
  for _, key in ipairs(keys) do
    vim.api.nvim_buf_del_keymap(0, 'n', key)
  end
  vim.notify 'Exited Window Resize Mode'
end

return M
