local wezterm = require 'wezterm';
local mux = wezterm.mux

local config = {
  default_prog = { '/usr/bin/zsh' },
  font = wezterm.font_with_fallback({"JetBrainsMono Nerd Font"}),
  font_size = 10,
  window_background_image = "./Pictures/wallpapers/denys-nevozhai-D68ADLeMh5Q-unsplash.jpg",
  window_background_image_hsb = {
    brightness = 0.005, -- Ajuste a luminosidade da imagem
    hue = 1.0,       -- Ajuste a tonalidade da imagem
    saturation = 1.0, -- Ajuste a saturação da imagem
  },
  hide_tab_bar_if_only_one_tab = true,
  initial_rows = 400,
  initial_cols = 500,
  window_decorations = "NONE",
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  keys = {
    { key = '+', mods = 'ALT|SHIFT', action = wezterm.action.SplitHorizontal },
    { key = '_', mods = 'ALT|SHIFT', action = wezterm.action.SplitVertical },
    { key = 'f', mods = 'ALT|SHIFT', action = wezterm.action.ToggleFullScreen },
  }
}

wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():perform_action(wezterm.action.ToggleFullScreen, pane)
end)

return config
