local wezterm = require 'wezterm';

return {
  default_prog = { '/usr/bin/zsh' },
  font = wezterm.font_with_fallback({"JetBrainsMono Nerd Font"}),
  window_background_image = "../hrmz/Pictures/wallpapers/wallhaven-o31o2p.png",
window_background_image_hsb = {
      brightness = 0.005, -- Ajuste a luminosidade da imagem
    hue = 1.0,       -- Ajuste a tonalidade da imagem
    saturation = 1.0, -- Ajuste a saturação da imagem
  },
  hide_tab_bar_if_only_one_tab = true,
    initial_rows = 100,
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
  }
}

