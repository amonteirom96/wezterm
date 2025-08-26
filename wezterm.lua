local wezterm = require("wezterm")

-- Detecção de modo escuro/claro do sistema (opcional)
local is_dark = wezterm.gui.get_appearance():find("Dark")

-- Tema Rosé Pine
-- local core_theme = wezterm.plugin.require("https://github.com/neapsix/wezterm")

-- local theme = is_dark and core_theme.moon or core_theme.dawn

local dark_theme = {
		foreground = "#dcd7ba",
		background = "#1f1f28",

		cursor_bg = "#c8c093",
		cursor_fg = "#c8c093",
		cursor_border = "#c8c093",

		selection_fg = "#c8c093",
		selection_bg = "#2d4f67",

		scrollbar_thumb = "#16161d",
		split = "#16161d",

		ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
		brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
		indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
	}

local light_theme = {
	foreground = "#6a6a6a",
	background = "#fafafa",
	cursor_bg = "#9a77cf",
	cursor_fg = "#fafafa",
	selection_bg = "#9a77cf",
	selection_fg = "#6a6a6a",

	ansi = {
		"#6a6a6a",
		"#e05661",
		"#1da912",
		"#eea825",
		"#118dc3",
		"#9a77cf",
		"#56b6c2",
		"#fafafa",
	},

	brights = {
		"#bebebe",
		"#e88189",
		"#25d717",
		"#f2bb54",
		"#1caceb",
		"#b69ddc",
		"#7bc6d0",
		"#ffffff",
	},

	tab_bar = {
		background = "#fafafa",
		inactive_tab_edge = "#fafafa",

		active_tab = {
			fg_color = "#9a77cf",
			bg_color = "#fafafa",
			intensity = "Bold",
		},

		inactive_tab = {
			fg_color = "#bebebe",
			bg_color = "#fafafa",
			intensity = "Bold",
		},

		inactive_tab_hover = {
			fg_color = "#9a77cf",
			bg_color = "#fafafa",
		},

		new_tab = {
			fg_color = "#9a77cf",
			bg_color = "#fafafa",
		},

		new_tab_hover = {
			fg_color = "#fafafa",
			bg_color = "#9a77cf",
		},
	},

	indexed = {
		[59] = "#bebebe",
		[100] = "#e2be7d",
		[214] = "#ee9025",
	},
}

local config = {
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" }),
	font_size = 14.0,
	-- colors = is_dark and dark_theme or light_theme,
	colors = dark_theme,
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
