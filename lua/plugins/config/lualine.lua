local M = {}
function M.BufIsPlugin()
	local filename = vim.fn.expand("%:t")
	return filename == "NvimTree" and true
		or filename == "packer" and true
		or vim.bo.filetype == "dashboard" and true
		or false
end

function M.FileIcon()
	local filename = vim.fn.expand("%:t")
	local icon = ""
	if not M.BufIsPlugin() and vim.fn.winwidth(0) > 70 and string.len(vim.bo.filetype) > 0 then
		icon = require("nvim-web-devicons").get_icon(filename, vim.bo.filetype) .. " "
	end
	return icon
end

function M.Filename()
	local filename = vim.fn.expand("%:t")
	local fname = filename == "NvimTree" and ""
		or filename == "packer" and ""
		or filename ~= "" and filename
		or "[No Name]"
	return M.Readonly() .. fname
end

function M.Readonly()
	local readonly = vim.api.nvim_exec([[echo &readonly || !&modifiable ? ' ' : '']], true)
	return readonly
end

function M.Mode()
	local fname = vim.fn.expand("%:t")
	return fname == "NvimTree" and "NVIMTREE"
		or fname == "packer" and "PACKER"
		or vim.bo.filetype == "dashboard" and "DASHBOARD"
		or require("lualine.utils.mode").get_mode()
end

function M.Paste()
	return vim.o.paste and "PASTE" or ""
end

function M.Spell()
	return vim.wo.spell and vim.bo.spelllang or ""
end

function M.FileFormat()
	local fileformat = ""
	if not M.BufIsPlugin() and vim.fn.winwidth(0) > 70 then
		fileformat = vim.bo.fileformat
	end

	return fileformat
end

function M.FileEncoding()
	local fileencoding = ""
	if not M.BufIsPlugin() and vim.fn.winwidth(0) > 70 then
		fileencoding = vim.bo.fileencoding
	end

	return fileencoding
end

function M.BufPercent()
	return vim.fn.winwidth(0) > 70 and string.format(
		"並%d%% of %d",
		(100 * vim.fn.line(".") / vim.fn.line("$")),
		vim.fn.line("$")
	) or ""
end

function M.LineInfo()
	return vim.fn.winwidth(0) > 70 and string.format("Ln %d, Col %-2d", vim.fn.line("."), vim.fn.col(".")) or ""
end

function M.TotalLines()
	return vim.fn.winwidth(0) > 70 and string.format("%d ﲯ", vim.fn.line("$")) or ""
end

return M
