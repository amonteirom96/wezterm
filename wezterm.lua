local wezterm = require 'wezterm'

-- Detecta se o sistema está em modo escuro ou claro
local is_dark = wezterm.gui.get_appearance():find("Dark")

-- Tema claro
local light_theme = {
  foreground = "#16181a",
  background = "#ffffff",

  cursor_bg = "#16181a",
  cursor_fg = "#ffffff",
  cursor_border = "#16181a",

  selection_fg = "#16181a",
  selection_bg = "#acacac",

  scrollbar_thumb = "#ffffff",
  split = "#ffffff",

  ansi = { "#ffffff", "#d11500", "#008b0c", "#997b00", "#0057d1", "#a018ff", "#008c99", "#16181a" },
  brights = { "#acacac", "#d11500", "#008b0c", "#997b00", "#0057d1", "#a018ff", "#008c99", "#16181a" },
  indexed = { [16] = "#d17c00", [17] = "#d11500" },
}

-- Tema escuro
local dark_theme = {
  foreground = "#ffffff",
  background = "#16181a",

  cursor_bg = "#ffffff",
  cursor_fg = "#16181a",
  cursor_border = "#ffffff",

  selection_fg = "#ffffff",
  selection_bg = "#3c4048",

  scrollbar_thumb = "#16181a",
  split = "#16181a",

  ansi = { "#16181a", "#ff6e5e", "#5eff6c", "#f1ff5e", "#5ea1ff", "#bd5eff", "#5ef1ff", "#ffffff" },
  brights = { "#3c4048", "#ff6e5e", "#5eff6c", "#f1ff5e", "#5ea1ff", "#bd5eff", "#5ef1ff", "#ffffff" },
  indexed = { [16] = "#ffbd5e", [17] = "#ff6e5e" },
}

return {
  font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" }),
  font_size = 15.0,

  -- usa seu tema custom
  colors = is_dark and dark_theme or light_theme,

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
