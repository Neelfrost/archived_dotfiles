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
