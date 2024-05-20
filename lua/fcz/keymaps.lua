return {
  base = function ()
    -- leader w = [w]rite
    vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
    -- leader wq = save and quit
    vim.keymap.set('n', '<leader>wq', '<cmd>write<cr><cmd>quit<cr>')
    -- clear search higlight on pressing <Esc> in normal mode
    vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
  end,
  harpoon = function(h)
    vim.keymap.set("n", "<leader>a", function() h:list():add() end)
    vim.keymap.set("n", "<leader>e", function() h.ui:toggle_quick_menu(h:list()) end)
    vim.keymap.set("n", "<leader>1", function() h:list():select(1) end)
    vim.keymap.set("n", "<leader>2", function() h:list():select(2) end)
    vim.keymap.set("n", "<leader>3", function() h:list():select(3) end)
    vim.keymap.set("n", "<leader>4", function() h:list():select(4) end)
    vim.keymap.set("n", "<leader>5", function() h:list():select(5) end)
    vim.keymap.set("n", "<leader>6", function() h:list():select(6) end)
  end,
  gitsigns = function(g)
    vim.keymap.set('n', ']c', function() g.nav_hunk('next') end)
    vim.keymap.set('n', '[c', function() g.nav_hunk('prev') end)
    vim.keymap.set('n', '[v', function() g.preview_hunk_inline() end)
    vim.keymap.set('n', '[b', function() g.toggle_current_line_blame() end)
  end,
}
