local M = {}

---@class PaletteBackground
---@field bg_dim string
---@field bg0 string
---@field bg1 string
---@field bg2 string
---@field bg3 string
---@field bg4 string
---@field bg5 string
---@field bg_visual string
---@field bg_red string
---@field bg_green string
---@field bg_blue string
---@field bg_yellow string

---@class PaletteBase
---@field fg string
---@field red string
---@field orange string
---@field yellow string
---@field green string
---@field aqua string
---@field blue string
---@field purple string
---@field grey0 string
---@field grey1 string
---@field grey2 string
---@field statusline1 string
---@field statusline2 string
---@field statusline3 string
---@field none string

---@class Palette: PaletteBase,PaletteBackground

---@alias Backgrounds "dark"
---@alias PaletteBackgrounds table<Backgrounds, PaletteBackground>

---@type PaletteBackgrounds
local hard_background = {
	dark = {
		bg_dim = "#09161a",
		bg0 = "#1b2b30",
		bg1 = "#1b2b30",
		bg2 = "#1b2b30",
		bg3 = "#2e3b3f",
		bg4 = "#3a515d",
		bg5 = "#4a6f7b",
		bg_visual = "#4c3743",
		bg_red = "#493b40",
		bg_green = "#3c4841",
		bg_blue = "#3a515d",
		bg_yellow = "#45443c",
	},
}

---@type table<Backgrounds, PaletteBase>
local base_palette = {
	dark = {
		fg = "#f8e7c2",
		-- red	
		red = "#915a5a",
		orange = "#997459",
		yellow = "#a18a5d",
		green = "#5c7a53",
		aqua = "#5f8787",
		blue = "#607f94",
		purple = "#997459",
		grey0 = "#2e3b3f",
		grey1 = "#3a515d",
		grey2 = "#4a6f7b",
		statusline1 = "#5c7a53",
		statusline2 = "#a18a5d",
		statusline3 = "#5f8787",
		none = "NONE",
	},
}

---Generates the colour palette based on the user's config
---@param options Config The package configuration table
---@param theme "dark" The user's background preference
---@return Palette
M.generate_palette = function(options, theme)
	local background = options.background or "medium"
	local base = base_palette[theme]
	---@type PaletteBackground
	local background_palette

	if background == "soft" then
		background_palette = soft_background[theme]
	elseif background == "hard" then
		background_palette = hard_background[theme]
	else
		background_palette = medium_background[theme]
	end

	---@type Palette
	local combined_palette = vim.tbl_extend("force", base, background_palette)
	options.colours_override(combined_palette)

	return combined_palette
end

return M
