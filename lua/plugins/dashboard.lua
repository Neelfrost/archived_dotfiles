-- Fix buffer movement, remove eob in dashboard
vim.cmd([[autocmd FileType dashboard :set buflisted | :setlocal fillchars=eob:\ ]])

-- Plugin count
local plugins_count = vim.fn.len(vim.fn.globpath(PACKER_PATH, "*", 0, 1))

vim.g.dashboard_default_executive = "telescope"
vim.g.dashboard_session_directory = vim.fn.stdpath("data") .. "\\session\\"

vim.g.dashboard_custom_section = {
	a = { description = { "  Recent Files              1" }, command = "Telescope oldfiles" },
	b = { description = { "  Find File                 2" }, command = "Telescope find_files" },
	c = { description = { "洛 New File                  3" }, command = "DashboardNewFile" },
	d = { description = { "  Bookmarks                 4" }, command = "Telescope marks" },
	e = { description = { "  Load Last Session         5" }, command = "SessionLoad" },
}

vim.g.dashboard_custom_footer = {
	plugins_count .. " plugins loaded",
}

-- Rainbow header
-- vim.g.dashboard_preview_command = "type"
-- vim.g.dashboard_preview_pipeline = "lolcat.exe"
-- vim.g.dashboard_preview_file = "C:\\Users\\Neel\\AppData\\Local\\nvim\\dash.txt"
-- vim.g.dashboard_preview_file_height = 20
-- vim.g.dashboard_preview_file_width = 51

-- vim.g.dashboard_custom_header = {
-- 	" ⠀⠀⠀⠀⠐⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡴⠂⠀⠀⠀⠀ ",
-- 	" ⠀⠀⠀⠀⠀⢻⣷⣀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⡇⠀⠀⠀⠀⠀ ",
-- 	" ⠀⠀⠀⠀⠀⣼⡟⣿⣦⡄⠀⠀⠀⠀⣠⣼⣿⢻⡇⠀⠀⠀⠀⠀ ",
-- 	" ⠀⠀⠀⠀⣰⡿⠁⢹⣿⠁⠀⠀⠀⠀⠈⣿⡇⠈⢷⣄⠀⠀⠀    ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
-- 	" ⠀⢄⣤⣾⠿⠀⠀⣸⣷⡀⠀⠀⠀⠀⢀⣿⡇⠀⠘⢿⣦⣄⡠    ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
-- 	" ⠀⠘⣿⣟⠀⠀⠀⠙⣿⣧⣄⠀⢀⣠⣿⡟⠃⠀⠀⠀⣿⣿⠃    ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
-- 	" ⠀⠀⠙⢻⣦⠀⠀⠀⠈⢻⣿⡄⢸⣿⠟⠁⠀⠀⢀⣶⠟⠁⠀    ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
-- 	" ⠀⠀⠀⠀⠀⢷⠀⠀⠀⠈⢿⡇⣼⡿⠀⠀⠀⠀⡏⠀⠀⠀⠀    ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
-- 	" ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⠁⠀⠀⠀⠀⠁⠀⠀⠀⠀    ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝⠀ ",
-- 	" ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
-- 	" ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
-- }

vim.g.dashboard_custom_header = {
	"              ⠀⠀⠀⠀⠐⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡴⠂⠀⠀⠀⠀ ",
	"              ⠀⠀⠀⠀⠀⢻⣷⣀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⡇⠀⠀⠀⠀⠀ ",
	"              ⠀⠀⠀⠀⠀⣼⡟⣿⣦⡄⠀⠀⠀⠀⣠⣼⣿⢻⡇⠀⠀⠀⠀⠀ ",
	"              ⠀⠀⠀⠀⣰⡿⠁⢹⣿⠁⠀⠀⠀⠀⠈⣿⡇⠈⢷⣄⠀⠀⠀     ",
	"              ⠀⢄⣤⣾⠿⠀⠀⣸⣷⡀⠀⠀⠀⠀⢀⣿⡇⠀⠘⢿⣦⣄⡠     ",
	"              ⠀⠘⣿⣟⠀⠀⠀⠙⣿⣧⣄⠀⢀⣠⣿⡟⠃⠀⠀⠀⣿⣿⠃     ",
	"              ⠀⠀⠙⢻⣦⠀⠀⠀⠈⢻⣿⡄⢸⣿⠟⠁⠀⠀⢀⣶⠟⠁⠀     ",
	"              ⠀⠀⠀⠀⠀⢷⠀⠀⠀⠈⢿⡇⣼⡿⠀⠀⠀⠀⡏⠀⠀⠀⠀     ",
	"              ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⠁⠀⠀⠀⠀⠁⠀⠀⠀⠀    ⠀ ",
	"              ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"              ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"              ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
	" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
	" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
	" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
	" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
	" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>n", "<cmd>Dashboard<CR>", opts)
