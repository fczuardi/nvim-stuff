return {
  plugins = {
    {
      'lewis6991/gitsigns.nvim',
      opts = {},
    },
    {
      'ThePrimeagen/harpoon',
      branch = 'harpoon2',
      dependencies = { 'nvim-lua/plenary.nvim' },
    },
    -- TODO: comment toggle plugin with <leader>+/ as shortcut
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      lazy = vim.fn.argc(-1) == 0,
      init = function(plugin)
        require("lazy.core.loader").add_to_rtp(plugin)
        require("nvim-treesitter.query_predicates")
        require("nvim-treesitter.install").prefer_git = true
      end,
      opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
          "vim",
          "lua",
          "bash",
          "markdown",
          "dockerfile",
        },
      },
      config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
      end,
    },
  },
  init = function()
    local harpoon = require("harpoon")
    harpoon:setup()
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)

    local gitsigns = require('gitsigns')
    vim.keymap.set('n', ']c', function() gitsigns.nav_hunk('next') end)
    vim.keymap.set('n', '[c', function() gitsigns.nav_hunk('prev') end)
  end
}
