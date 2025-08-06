local wezterm = require 'wezterm'

-- Detecção de modo escuro/claro do sistema (opcional)
local is_dark = wezterm.gui.get_appearance():find("Dark")

-- Tema Rosé Pine
local core_theme = wezterm.plugin.require('https://github.com/neapsix/wezterm')

local theme = is_dark and core_theme.main or core_theme.dawn


return {
  font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" }),
  font_size = 15.0,
  colors = theme.colors(),
  window_frame = theme.window_frame(), -- needed only if using fancy tab bar

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
