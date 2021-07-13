-- -------------------------------- Settings -------------------------------- --

require("compe").setup({
	enabled = true,
	autocomplete = true,
	debug = false,
	min_length = 2,
	preselect = "enable",
	throttle_time = 80,
	source_timeout = 200,
	resolve_timeout = 800,
	incomplete_delay = 400,
	max_abbr_width = 100,
	max_kind_width = 100,
	max_menu_width = 100,
	documentation = {
		true,
		border = { "", "", "", " ", "", "", "", " " },
	},
	source = {
		omni = {
			kind = "  ",
			filetypes = { "tex" },
		},
		path = { kind = "  " },
		buffer = { kind = " ﬘ " },
		nvim_lsp = { kind = "  " },
		nvim_lua = { kind = "  " },
		ultisnips = { kind = "  " },
	},
})

-- -------------------------------- Keybinds -------------------------------- --

vim.cmd([[
	inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
	inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
	inoremap <silent><expr> <C-Space> compe#complete()
	inoremap <silent><expr> <CR> compe#confirm('<CR>')
	inoremap <silent><expr> <C-e> compe#close('<C-e>')
]])
