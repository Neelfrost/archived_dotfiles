-- Set current file's dir to cwd
vim.cmd([[autocmd BufEnter * silent! lcd %:p:h]])

-- Remove trailing whitespace and newlines
vim.cmd([[autocmd BufWritePre * silent! lua perform_cleanup()]])

-- Highlight on yank
vim.cmd(
	[[autocmd TextYankPost * lua vim.highlight.on_yank { higroup = 'Visual', timeout = 500, on_visual = false, on_macro = true }]]
)

-- vim.cmd([[
--     autocmd TextChangedP if pumvisible() | highlight! 'Normalfloat' guifg=vim.g.gruvbox_material_palette.fg1,guibg=vim.g.gruvbox_material_palette.bg3 | else | highlight! 'Normalfloat' guifg=vim.g.gruvbox_material_palette.blue,guibg=vim.g.gruvbox_material_palette.bg0 | endif
-- ]])

-- Latex class file syntax
vim.cmd([[autocmd BufNewFile,BufRead *.cls set filetype=tex]])

-- Automatically reload the file if it is changed outside of nvim
vim.cmd([[
    augroup AUTO_READ
        autocmd!
        autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() == 'n' && getcmdwintype() == '' | checktime | endif
        autocmd FileChangedShellPost * echohl WarningMsg | echo 'File changed on disk. Buffer reloaded!' | echohl None
    augroup END
]])

-- Return to last edit position when opening a file
-- vim.cmd([[
--     augroup RESUME_EDIT_POSITION
--         autocmd!
--         autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit' | execute "normal! g`\"zvzz" | endif
--     augroup END
-- ]])

-- Set window title
vim.cmd([[
    augroup UPDATE_WINDOW_TITLE
        autocmd!
        autocmd BufEnter * :set title | let &titlestring = expand('%') !=# '' ? expand('%') : 'Neovim'
    augroup END
]])

-- Save and restore folds
-- Also resumes edit position
vim.cmd([[
    augroup SAVE_VIEW
        autocmd!
        autocmd BufWinLeave *.* if expand('%') != '' | mkview | endif
        autocmd BufWinEnter *.* if expand('%') != '' | silent! loadview | endif
    augroup END
]])

vim.cmd([[
    augroup RESTORE_WIN_VIEW
    autocmd!
    autocmd BufLeave * lua auto_save_win_view()
    autocmd BufEnter * lua auto_restore_win_view()
    augroup END
]])
