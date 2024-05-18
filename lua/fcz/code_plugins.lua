return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require('gitsigns')
        vim.keymap.set('n', ']c', function() gitsigns.nav_hunk('next') end)
        vim.keymap.set('n', '[c', function() gitsigns.nav_hunk('prev') end)
      end
    },
  },
}
