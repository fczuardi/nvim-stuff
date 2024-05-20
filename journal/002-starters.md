# Try before you buy

From the README of the [kickstart](https://github.com/nvim-lua/kickstart.nvim) neovim starter
template, there is a particular question in the FAQ that was super useful:

> Can I keep my existing configuration in parallel to kickstart?
> Yes! You can use NVIM_APPNAME=nvim-NAME to maintain multiple configurations. For example, you can install the kickstart configuration in ~/.config/nvim-kickstart and create an alias:
> alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
> When you run Neovim using nvim-kickstart alias it will use the alternative config directory and the matching local directory ~/.local/share/nvim-kickstart. You can apply this approach to any Neovim distribution that you would like to try out.

That was a game-changer for me. Since I dont want to blindly start with a bloated config with
several tools that I dont even know the keybinds for, I want to craft my own personal 
vimrc (or init.lua in this case) from scratch, adding things as I am going to need them.

With the env var + alias trick, I can have multiple neovims in parallel, and compare what works for
me from different "distros" or "starter configs" and borrow the parts that I like for my own
baaby config.

Here are some different aliases and their projects:

- kickvim
  - https://github.com/nvim-lua/kickstart.nvim
  - A launch point for your personal nvim configuration
- tinyVim
  - https://github.com/NvChad/tinyvim
  - Most Organized minimal Neovim PDE config for beginners ( 363 ~ LOC )
- launchvim
  - https://github.com/LunarVim/Launch.nvim
  - 🚀 Launch.nvim is modular starter for Neovim.
- lvim
  - https://www.lunarvim.org/
- chadvim
  - https://nvchad.com/
  - Blazing fast Neovim config providing solid defaults and a beautiful UI

## Notes

### TinyVim
- easy to read/grab ideas
- nightfox theme
- mappings to steal
  - telescope
  - tab/buffer management
- plugins
  - "numToStr/Comment.nvim",
  - "nvim-telescope/telescope.nvim",
  - "echasnovski/mini.statusline",
  - "akinsho/bufferline.nvim",

### NvChad

- nice statusline
- dont play well with :e (example `:e .` or `chadvim .` opens a blank buffer instead of file listing)
- good shortcut for comment toggle, `<leader>+/`
- terrible to lear from, treats all configs as one single plugin, no easy init.lua to read and copy snippets
- base46 theme might be a good one, but dont seem to be plug and play, too much to lear for a simple colorscheme
