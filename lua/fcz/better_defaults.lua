-- no more +"y to yank to system clipboard
-- see :help provider-clipboard
vim.opt.clipboard:append { "unnamedplus" }

-- case insensitive search unless the search has capital letters
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- spaces for identing
vim.opt.expandtab = true

-- display trailing spaces, nbsp and tab chars
vim.opt.list = true

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Save undo history
vim.opt.undofile = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Unused providers
vim.api.nvim_set_var('loaded_perl_provider', 0)
vim.api.nvim_set_var('loaded_ruby_provider', 0)

-- identify *.Containerfile as Dockerfiles
vim.filetype.add({
  extension = {
    Containerfile = 'dockerfile',
  }
})
