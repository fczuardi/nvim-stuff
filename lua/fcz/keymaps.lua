-- leader w = [w]rite
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
-- leader wq = save and quit
vim.keymap.set('n', '<leader>wq', '<cmd>write<cr><cmd>quit<cr>')
-- clear search higlight on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
