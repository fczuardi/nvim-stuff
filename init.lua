-- I am now using a symbolic link on ~/.config/nvim-fcz to this repo that has a lua subdir
-- and the NVIM_APPNAME=nvim-fcz env var so I dont need this hack anymore.
-- HACK: append my github project's modules to package.path so I can require them
-- local modules_path = "/home/fcz/github/nvim-stuff/dev/lua"
-- package.path = string.format("%s/?.lua;%s/?/init.lua;%s", modules_path, modules_path, package.path)

-- make a dump(o) function available, useful for printing tables
--require('fcz.debug')


--[[
Better defaults:
  - system clipboard
  - case insensitive search
  - space to indent
  - space as <leader>
  - save undo history
  - set 'list', show trailing spaces
  - scroloff 10, scroll before reaching the last or first line
]]
require('fcz.better_defaults')

--[[
Personal coding preferences:
 - show colorcolumn at 100
 - tabstop 2
 - display line numbers
]]
require('fcz.coding_preferences')

--[[
Personal keymaps:
 - <leader>w to save current file
 - <leader>wq to save current file and quit
 - Esc in normal mode to clear highlight search
]]
require('fcz.keymaps')

--[[
User Interface:
  - nerd font
]]
require('fcz.ui').base()

--[[
Plugin manager (Lazy):

 Neovim works with the Vim 8's style built-in package manager, see :h packages
 but having a plugin manager to download projects from within the editor can be useful,
 this module installs Lazy an makes the :Lazy command available
]]
require('fcz.plugin_manager')
local plugin_manager = require('lazy')
local plugins = {}

--[[
Colorschemes:
 - nord
 - rose-pine
 - tokyonight-night
]]
local themes = require('fcz.themes')
--[[
UI plugins:
  - statusline
]]
local ui_plugins = require('fcz.ui').plugins
table.insert(plugins, 1, ui_plugins)

--[[
Code plugins:
  - gitsigns
    - ]c,[c = next,prev hunk
]]
local code_plugins = require('fcz.code_plugins')

--[[
Plugins setup
]]
table.insert(plugins, 1, code_plugins.plugins)
table.insert(plugins, 1, themes)
plugin_manager.setup(plugins)
code_plugins.init()
vim.cmd.colorscheme 'nordfox' -- default colorscheme
