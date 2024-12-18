local palettes = require("asha.colours")
local config = require("asha").config

local palette = palettes.generate_palette(config, vim.o.background)

if config.transparent_background_level == 2 then
	palette.bg1 = palette.none
end

return {
	normal = {
		a = { bg = palette.statusline1, fg = palette.bg_dim, gui = "bold" },
		b = { bg = palette.bg3, fg = palette.fg},
		c = { bg = palette.bg1, fg = palette.fg},
	},
	insert = {
		a = { bg = palette.statusline2, fg = palette.bg_dim, gui = "bold" },
		b = { bg = palette.bg3, fg = palette.fg},
		c = { bg = palette.bg1, fg = palette.fg},
	},
	visual = {
		a = { bg = palette.statusline3, fg = palette.bg_dim, gui = "bold" },
		b = { bg = palette.bg3, fg = palette.fg},
		c = { bg = palette.bg1, fg = palette.fg},
	},
	replace = {
		a = { bg = palette.orange, fg = palette.bg_dim, gui = "bold" },
		b = { bg = palette.bg3, fg = palette.fg },
		c = { bg = palette.bg1, fg = palette.fg },
	},
	command = {
		a = { bg = palette.aqua, fg = palette.bg_dim, gui = "bold" },
		b = { bg = palette.bg3, fg = palette.fg },
		c = { bg = palette.bg1, fg = palette.fg },
	},
	terminal = {
		a = { bg = palette.purple, fg = palette.bg_dim, gui = "bold" },
		b = { bg = palette.bg3, fg = palette.fg },
		c = { bg = palette.bg1, fg = palette.fg },
	},
	inactive = {
		a = { bg = palette.bg1, fg = palette.grey1 },
		b = { bg = palette.bg1, fg = palette.grey1 },
		c = { bg = palette.bg1, fg = palette.grey1 },
	},
}
