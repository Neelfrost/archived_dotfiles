local function lualine_paste()
	return vim.o.paste
end

local function lualine_readonly()
	return vim.o.readonly and "" or ""
end

local function lualine_spell()
	return vim.o.spelllang
end

require("lualine").setup({
	options = { theme = "ayu_dark", section_separators = "", component_separators = "" },
	sections = {
		-- these are to remove the defaults
		lualine_a = {},
		lualine_b = {},
		lualine_y = {},
		lualine_z = {},
		lualine_c = {},
		lualine_x = {},
	},
	inactive_sections = {
		-- these are to remove the defaults
		lualine_a = {},
		lualine_v = {},
		lualine_y = {},
		lualine_z = {},
		lualine_c = {},
		lualine_x = {},
	},
	section = {
		lualine_a = { "mode", lualine_paste },
		lualine_b = { { lualine_readonly }, { "filename" }, { lualine_spell } },
		lualine_c = { { "fileencoding" }, { "fileformat" } },
	},
})
