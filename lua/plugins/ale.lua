vim.g.ale_disable_lsp = 1
vim.g.ale_fix_on_save = 1
vim.g.ale_hover_cursor = 0
vim.g.ale_lint_on_enter = 0
vim.g.ale_lint_on_insert_leave = 1
vim.g.ale_lint_on_text_changed = "never"
vim.g.ale_warn_about_trailing_blank_lines = 0
vim.g.ale_warn_about_trailing_whitespace = 0

-- Set syntax checkers
vim.g.ale_linters = {
	python = { "flake8" },
	tex = { "chktex", "lacheck" },
	cs = { "OmniSharp" },
}

-- Set syntax fixers
vim.g.ale_fixers = {
	tex = { "latexindent" },
	lua = { "stylua" },
	python = { "black" },
}
vim.g.ale_fix_on_save_ignore = {
	tex = { "latexindent" },
}

-- Icons
vim.g.ale_sign_error = ICON_ERROR
vim.g.ale_sign_warning = ICON_WARN
vim.g.ale_sign_info = ICON_INFO

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<F4>", "<cmd>ALEFix<CR>", opts)
