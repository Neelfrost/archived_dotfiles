-- Find files in specified directories
local M = {}

function M.dir_nvim()
	local opts

	opts = {
		prompt_title = "Neovim",
		shorten_path = false,
		cwd = CONFIG_PATH,
		file_ignore_patterns = { ".git", ".png" },

		initial_mode = "insert",
		selection_strategy = "reset",
		theme = require("telescope.themes").get_dropdown({}),
		previewer = false,
	}

	require("telescope.builtin").find_files(opts)
end

function M.dir_latex()
	local opts

	opts = {
		prompt_title = "LaTeX",
		shorten_path = false,
		cwd = HOME_PATH .. "\\Documents\\LaTeX",
		file_ignore_patterns = { ".git", ".pdf", "indent.log", "tags" },

		initial_mode = "insert",
		selection_strategy = "reset",
		theme = require("telescope.themes").get_dropdown({}),
		previewer = false,
	}

	require("telescope.builtin").find_files(opts)
end

function M.dir_python()
	local opts

	opts = {
		prompt_title = "Python",
		shorten_path = false,
		cwd = "D:\\My Folder\\Dev\\Python",
		file_ignore_patterns = { ".git", "tags" },

		initial_mode = "insert",
		selection_strategy = "reset",
		theme = require("telescope.themes").get_dropdown({}),
		previewer = false,
	}

	require("telescope.builtin").find_files(opts)
end

return M
