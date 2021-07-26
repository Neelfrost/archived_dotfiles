local areas = require("plugins.config.lualine")

require("lualine").setup({
	options = { theme = "ayu_dark", section_separators = "", component_separators = { "│", "│" } },
	sections = {
		lualine_a = { { areas.Mode }, { areas.Paste } },
		lualine_b = { { areas.Filename }, { areas.Spell } },
		lualine_c = { { areas.FileEncoding }, { areas.FileFormat } },
		lualine_x = {},
		lualine_y = { { areas.LineInfo } },
		lualine_z = { { areas.TotalLines } },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = { { areas.Filename } },
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
