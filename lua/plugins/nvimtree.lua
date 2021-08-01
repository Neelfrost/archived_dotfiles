vim.cmd([[
    autocmd BufEnter NvimTree :setlocal scrolloff=0 | :setlocal fillchars=eob:\ ,
]])

vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_highlight_opened_files = 1
-- vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_side = "right"
vim.g.nvim_tree_width = 24
-- vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_hijack_cursor = 1
vim.g.nvim_tree_update_cwd = 1
vim.g.nvim_tree_show_icons = {
	git = 0,
	folders = 1,
	files = 1,
	folder_arrows = 1,
}
vim.g.nvim_tree_ignore = {
	-- tex
	"*.pdf",
	"*.gz",
	"*.aux",
	"*.lof",
	"*.lot",
	"*.fls",
	"*.out",
	"*.toc",
	"*.fmt",
	"*.fot",
	"*.cb",
	"*.cb2",
	".*.lb",
	"*.fdb_latexmk",
	"*.synctex",
	"*.synctex.gz",
	"*.synctex(busy)",
	-- python
	"__pycache__",
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", opts)
