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
          "python",
        },
      },
      config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
      end,
    },
  },
  init = function()
    local gitsigns = require('gitsigns')
    require("fcz.keymaps").gitsigns(gitsigns)

    local harpoon = require("harpoon")
    harpoon:setup()
    require("fcz.keymaps").harpoon(harpoon)
  end
}
