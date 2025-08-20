local wezterm = require("wezterm")

-- Detecção de modo escuro/claro do sistema (opcional)
local is_dark = wezterm.gui.get_appearance():find("Dark")

-- Tema Rosé Pine
-- local core_theme = wezterm.plugin.require("https://github.com/neapsix/wezterm")

-- local theme = is_dark and core_theme.moon or core_theme.dawn

local dark_theme = {
	foreground = "#d4d4d4",
	background = "#1f1f1f",
	cursor_bg = "#d4d4d4",
	cursor_fg = "1f1f1f",
	cursor_border = "#d4d4d4",
	selection_fg = "#1f1f1f",
	selection_bg = "#dcdcaa",
	scrollbar_thumb = "#ffffff",
	split = "#ffffff",
	ansi = {
		"#1f1f1f",
		"#f44747",
		"#608b4e",
		"#dcdcaa",
		"#569cd6",
		"#c678dd",
		"#56b6c2",
		"#d4d4d4",
	},
	brights = {
		"#808080",
		"#f44747",
		"#608b4e",
		"#dcdcaa",
		"#569cd6",
		"#c678dd",
		"#56b6c2",
		"#d4d4d4",
	},
	indexed = { [16] = "#d17c00", [17] = "#d11500" },
}

local light_theme = {
	foreground = "#000000",
	background = "#ffffff",

	cursor_bg = "#000000",
	cursor_fg = "#ffffff",
	cursor_border = "#000000",

	selection_fg = "#ffffff",
	selection_bg = "#d7ba7d",

	scrollbar_thumb = "#16181a",
	split = "#16181a",

	ansi = {
    '#ffffff',
    '#c72e0f',
    '#008000',
    '#795e25',
    '#007acc',
    '#af00db',
    '#56b6c2',
    '#000000'
	},
	brights = {
    '#808080',
    '#c72e0f',
    '#008000',
    '#795e25',
    '#007acc',
    '#af00db',
    '#56b6c2',
    '#000000'
	},
	indexed = { [16] = "#ffbd5e", [17] = "#ff6e5e" },
}

local config = {
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" }),
	font_size = 15.0,
	colors = is_dark and dark_theme or light_theme,
	-- window_frame = theme.window_frame(), -- needed only if using fancy tab bar

	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,
	front_end = "WebGpu",

	enable_scroll_bar = false,
	window_close_confirmation = "NeverPrompt",

	window_background_opacity = 1,
	macos_window_background_blur = 0,

	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	default_cursor_style = "SteadyBlock",
	warn_about_missing_glyphs = false,
}

if string.find(wezterm.target_triple, "windows") then
	config.default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe" }
end

return config
