-- Vim-terminal-help
vim.g.terminal_height = 15
vim.g.terminal_list = 0

-- Zepl
-- Enable the Python contrib module
vim.cmd([[runtime zepl/contrib/python.vim]])

vim.g.repl_config = {
	python = {
		cmd = "python",
		formatter = vim.fn["zepl#contrib#python#formatter"],
	},
}

-- vim-open-url
vim.g.open_url_default_mappings = 0
vim.cmd([[
    nmap <Leader>u <Plug>(open-url-browser)
    nmap <Leader>s <Plug>(open-url-search)
]])

-- vim-surround
vim.cmd([[
    nmap SS <Plug>Yssurround
    nmap S <Plug>Ysurround
]])
