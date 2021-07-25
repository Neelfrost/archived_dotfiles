-- Author: Neel Basak
-- Github: https:/github.com/Neelfrost
-- File: init.lua

-- Paths
HOME_PATH = vim.fn.expand("$HOME")
CONFIG_PATH = vim.fn.stdpath("config")
PACKER_PATH = vim.fn.stdpath("data") .. "\\site\\pack\\packer\\start"

-- General config
require("options")
require("mappings")
require("utils")
require("autocommands")
require("pluginlist")

-- Require plugin configs once installed
if vim.fn.len(vim.fn.globpath(PACKER_PATH, "*", 0, 1)) > 1 then
	require("plugins.ale")
	require("plugins.autopairs")
	require("plugins.barbar")
	require("plugins.compe")
	require("plugins.dashboard")
	require("plugins.general")
	require("plugins.gutentags")
	require("plugins.hop")
	require("plugins.indentline")
	require("plugins.kommentary")
	require("plugins.lsp")
	require("plugins.lspsaga")
	require("plugins.lualine")
	require("plugins.nvimtree")
	require("plugins.rainbow-brackets")
	require("plugins.telescope")
	require("plugins.ultisnips")
	require("plugins.vimtex")
	require("theme")
end
