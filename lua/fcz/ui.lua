return {
  base = function()
    -- Lazy use nerdfonts for icons, MesloLG is a good one https://www.nerdfonts.com/font-downloads
    vim.g.have_nerd_font = true
  end,
  plugins = {
    {
      "nvim-lualine/lualine.nvim",
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      config = function()
        require("lualine").setup()
      end
    },
  },
}
