-- -- Needs fixing
-- vim.opt_local.spell = true
-- vim.opt_local.linebreak = true
-- vim.opt_local.wrap = true

-- -- Auto insert \item on <CR>
-- -- https://stackoverflow.com/questions/2547739/auto-insert-text-at-a-newline-in-vim
-- function _G.insert_item()
-- 	local end_lnum, _ = vim.fn.searchpairpos("\\begin{", "", "\\end{", "nW")
-- 	if vim.fn.match(vim.fn.getline(end_lnum), "(itemize|enumerate|description)") ~= -1 then
-- 		return [[\\item ]]
-- 	elseif vim.fn.match(vim.fn.getline(end_lnum), "(tasks)") ~= -1 then
-- 		return [[\\task ]]
-- 	else
-- 		return ""
-- 	end
-- end

-- function _G.which_item()
-- 	local items = { [[\\task $]], [[\item $]] }
-- 	for _, item in pairs(items) do
-- 		if item == vim.fn.getline(".") then
-- 			return 1
-- 		end
-- 	end
-- 	return 0
-- end

-- -- Inverse search
-- -- https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt
-- function _G.set_server_name()
-- 	local nvim_server_file = vim.fn.has("win32") and os.getenv("TEMP") .. "/curnvimserver.txt"
-- 		or "/tmp/curnvimserver.txt"
-- 	vim.fn.system(vim.fn.printf("echo %s > %s", vim.v.servername, nvim_server_file))
-- end

-- -- Replace \ with / in LaTex input fields
-- function _G.fix_inputs()
-- 	local view = vim.fn.winsaveview()
-- 	vim.cmd([[keeppatterns %s/\(input\|include\)\({.\+\)\\\(.\+}\)/\1\2\/\3/ge]])
-- 	vim.fn.winrestview(view)
-- end

-- -- vim.cmd([[
-- --     augroup VIMTEX_COMMON
-- --         autocmd!
-- --         lua set_server_name()
-- --     augroup END
-- -- ]])

-- vim.cmd([[autocmd BufWritePre *.tex lua fix_inputs()]])

-- -- Set and Restore indent
-- vim.bo.indent_blankline_char = "·"
-- vim.bo.indent_blankline_space_char = "·"

-- -- Clean up auxiliary files on quit
-- vim.cmd([[
--     augroup VIMTEX_CLEAN
--     autocmd!
--     autocmd User VimtexEventQuit VimtexStopAll
--     autocmd User VimtexEventQuit VimtexClean
--     auugroup END
-- ]])

-- local n_opts = { noremap = true }
-- -- vim.api.nvim_buf_set_keymap(0, "n", "<Leader>t", "<cmd>w!<CR><cmd>AsyncRun -mode=term -pos=external lua %<CR>", n_opts)
-- -- inoremap <buffer> <expr> <CR> GetLine()
-- --             \ ? '<C-w><C-w>'
-- --             \ : (col('.') < col('$') ? '<CR>' : '<CR>'.AutoItem() )
-- -- nnoremap <expr> o 'o'.AutoItem()
-- -- nnoremap <expr> O 'O'.AutoItem()

-- -- -- Push to next item of the list
-- -- nnoremap <Insert> i<CR>\item <Esc>
-- -- -- Adjoin next item
-- -- nnoremap <Delete> gJi<C-o>dW<C-o>dW <Esc>

-- -- -- Bold - italics word under cursor or selected
-- -- vnoremap <M-b> di\textbi{}<Esc>P
-- -- nnoremap <M-b> diwi\textbi{}<Esc>P

-- -- -- Bold word under cursor or selected
-- -- vnoremap <M-B> di\textbf{}<Esc>P
-- -- nnoremap <M-B> diwi\textbf{}<Esc>P

-- -- -- Put the word inside chem environment
-- -- nnoremap <M-v> diwi\ch{}<Esc>P
-- -- vnoremap <M-v> di\ch{}<Esc>P

-- -- -- Append period or comma to selected lines
-- -- vnoremap np :norm A.
-- -- vnoremap nc :norm A,
