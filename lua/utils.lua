-- Check if key exists in table
local function table_has_key(table, key)
	for k, _ in pairs(table) do
		if k == key then
			return true
		end
	end
	return false
end

-- Trim newline at eof, trailing whitespace.
function _G.perform_cleanup()
	if vim.bo.modified then
		local view = vim.fn.winsaveview()
		vim.cmd([[
            keeppatterns %s/$\n\+\%$//e       " removes trailing lines
            keeppatterns %s/\s\+$//e          " removes trailing spaces
        ]])
		if vim.bo.filetype == "tex" then
			vim.cmd([[
                keeppatterns %s/\\item$/\\item /e " do not remove trailing space after LaTeX \item
                keeppatterns %s/\\task$/\\task /e " do not remove trailing space after LaTeX \task
            ]])
		end
		vim.fn.winrestview(view)
	end
end

-- Save current view settings on a per-window, per-buffer basis.
-- https://stackoverflow.com/questions/4251533/vim-keep-window-position-when-switching-buffers
-- http://vim.wikia.com/wiki/Avoid_scrolling_when_switch_buffers
function _G.auto_save_win_view()
	if not vim.w.saved_buf_view then
		vim.w.saved_buf_view = {}
	end
	vim.w.saved_buf_view[vim.fn.bufnr("%")] = vim.fn.winsaveview()
end

function _G.auto_restore_win_view()
	local buf = vim.fn.bufnr("%")
	if vim.w.saved_buf_view and table_has_key(vim.w.saved_buf_view, buf) then
		local view = vim.fn.winsaveview()
		local atStartOfFile = view.lnum == 1 and view.col == 0
		if atStartOfFile and not vim.o.diff then
			vim.fn.winrestview(vim.w.saved_buf_view[buf])
		end
		vim.api.nvim_win_del_var("saved_buf_view")
	end
end

-- Quickfix toggle
-- https://vim.fandom.com/wiki/Toggle_to_open_or_close_the_quickfix_window
vim.cmd([[command -bang -nargs=? QFix lua qfix_toggle(<bang>0)]])
function _G.qfix_toggle(forced)
	if vim.g.qfix_win and forced then
		vim.cmd([[cclose]])
		vim.api.nvim_del_var("qfix_win")
	else
		vim.cmd([[copen 10]])
		vim.g.qfix_win = vim.fn.bufnr("$")
	end
end

-- Buffer text object
-- https://github.com/jdhao/nvim-config/blob/nvim-lsp/autoload/text_obj.vim
-- function _G.buffer_text_object()
-- 	local buf_num = vim.fn.bufnr()
-- 	vim.fn.setpos("'<", { buf_num, 1, 1, 0 })
-- 	vim.fn.setpos("'>", { buf_num, vim.fn.line("$"), 1, 0 })
-- 	vim.api.nvim_command("normal! `<V>`")
-- end

-- Launch external program
function _G.launch_ext_prog(prog, args)
	vim.api.nvim_command("!" .. prog .. " " .. args)
	vim.cmd([[redraw!]])
end

-- Custom foldtext
function _G.custom_fold_text()
	local matches = {
		["^"] = "%^",
		["$"] = "%$",
		["("] = "%(",
		[")"] = "%)",
		["%"] = "%%",
		["."] = "%.",
		["["] = "%[",
		["]"] = "%]",
		["*"] = "%*",
		["+"] = "%+",
		["-"] = "%-",
		["?"] = "%?",
	}
	local line = vim.fn.getline(vim.v.foldstart)
	local comment = vim.bo.commentstring:gsub("%s*%%s", ""):gsub(".", matches)
	-- Remove markers
	line = line:gsub("%{%{%{", "")
	-- Remove commentstring
	line = line:gsub(comment, "")
	-- Remove spaces and tabs
	line = line:gsub("%c", ""):gsub("%s+", " ")
	local line_count = vim.v.foldend - vim.v.foldstart + 1
	return "  " .. line .. ": " .. line_count .. " lines"
end

-- Reloading lua modules using Telescope
-- taken and modified from:
-- https://ustrajunior.com/posts/reloading-neovim-config-with-telescope/
function _G.verbose_print(v)
	print(vim.inspect(v))
	return v
end

if pcall(require, "plenary") then
	local reload = require("plenary.reload").reload_module
	function _G.plenary_reload(name)
		reload(name)
		return require(name)
	end
end
