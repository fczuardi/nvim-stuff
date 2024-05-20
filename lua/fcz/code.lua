return {
  base = function()
    -- default tab size
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    -- YES Tim Pope! even for Markdown!
    -- see https://www.reddit.com/r/neovim/comments/z2lhyz/comment/ixjb7je/ and :help ft-markdown-plugin
    vim.g.markdown_recommended_style = 0

    -- show color column
    vim.opt.colorcolumn = { 100 }

    -- show line numbers
    vim.opt.number = true
  end,


  plugins = {
    -- Gitsigns
    {
      'lewis6991/gitsigns.nvim',
      opts = {},
    },

    -- Harpoon 2
    {
      'ThePrimeagen/harpoon',
      branch = 'harpoon2',
      dependencies = { 'nvim-lua/plenary.nvim' },
    },

    -- TODO: comment toggle plugin with <leader>+/ as shortcut

    -- Tree-sitter
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


  plugins_setup = function()
    local gitsigns = require('gitsigns')
    require("fcz.keymaps").gitsigns(gitsigns)

    local harpoon = require("harpoon")
    harpoon:setup()
    require("fcz.keymaps").harpoon(harpoon)
  end,
}
