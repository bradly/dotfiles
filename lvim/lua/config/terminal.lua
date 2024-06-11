-- Set key mappings for normal, insert, visual, and select modes
local all_modes = {'n', 'i', 'v', 's'}
for _, mode in ipairs(all_modes) do
  vim.keymap.set(mode, '<C-t>t', '<Cmd>ToggleTerm<CR>', { noremap = true, silent = true })
end

-- Set key mapping for terminal mode
vim.api.nvim_set_keymap('t', '<C-t>t', [[<C-\><C-n><Cmd>ToggleTerm<CR>]], { noremap = true, silent = true })
