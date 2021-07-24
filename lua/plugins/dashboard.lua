vim.cmd([[
    autocmd Filetype dashboard :setlocal fillchars=eob:\ ,
]])

-- Plugin count
local plugins_count = vim.fn.len(vim.fn.globpath(vim.fn.stdpath("data") .. "/site/pack/packer/start", "*", 0, 1))

vim.g.dashboard_default_executive = "telescope"
vim.g.dashboard_session_directory = vim.fn.stdpath("data") .. "/session"

vim.g.dashboard_custom_section = {
	a = { description = { "  Recents                   " }, command = "Telescope oldfiles" },
	b = { description = { "  Find File                 " }, command = "Telescope find_files" },
	c = { description = { "洛 New File                  " }, command = "DashboardNewFile" },
	d = { description = { "  Bookmarks                 " }, command = "Telescope marks" },
	e = { description = { "  Load Last Session         " }, command = "SessionLoad" },
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

-- Does not work
vim.api.nvim_buf_set_keymap(vim.g.dashboard_bufnr, "", "<Leader>e", "<cmd>DashboardNewFile<CR>", {})
vim.api.nvim_buf_set_keymap(vim.g.dashboard_bufnr, "", "<Leader>b", "<cmd>Telescope marks<CR>", {})
vim.api.nvim_buf_set_keymap(vim.g.dashboard_bufnr, "", "<Leader>r", "<cmd>Telescope oldfiles<CR>", {})
vim.api.nvim_buf_set_keymap(vim.g.dashboard_bufnr, "", "<Leader>f", "<cmd>Telescope find_files<CR>", {})
vim.api.nvim_buf_set_keymap(vim.g.dashboard_bufnr, "", "<Leader>s", "<cmd>SessionLoad<CR>", {})
