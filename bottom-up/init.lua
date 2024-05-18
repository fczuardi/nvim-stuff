-- HACK: append my github project's modules to package.path so I can require them
local modules_path = "/home/fcz/github/nvim-stuff/lua"
package.path = string.format("%s/?.lua;%s/?/init.lua;%s", modules_path, modules_path, package.path)

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
  - TODO: statusline?
]]
require('fcz.ui')

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
Code plugins:
  - gitsigns
    - ]c,[c = next,prev hunk
]]
local code_plugins = require('fcz.code_plugins')

--[[
Plugins setup
]]
table.insert(plugins, 1, themes)
table.insert(plugins, 1, code_plugins)
plugin_manager.setup(plugins)
vim.cmd.colorscheme 'nord' -- default colorscheme
