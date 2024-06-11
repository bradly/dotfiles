-- Keybinding to toggle nvim-tree
vim.api.nvim_set_keymap('n', '-', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Keybindings to navigate buffers
vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
