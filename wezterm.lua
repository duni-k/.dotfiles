local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Gruvbox dark, medium (base16)'
config.font = wezterm.font 'Fira Code'
-- stylistic font and ligature alternatives for fira code
config.harfbuzz_features = { 'cv01', 'cv02', 'cv31', 'cv30', 'ss02', 'cv19', 'cv22', 'cv23', 'ss03', 'cv04' }

config.front_end = "WebGpu"
-- disable audible bell but create a visual one
-- that flashes the screen
config.audible_bell = 'Disabled'
config.visual_bell = {
  fade_in_function = 'EaseIn',
  fade_in_duration_ms = 150,
  fade_out_function = 'EaseOut',
  fade_out_duration_ms = 150,
}
config.colors = {
  visual_bell = '#202020',
}

local act = wezterm.action
config.keys = {
  {
    key = 'w',
    mods = 'CTRL',
    action = act.CloseCurrentPane { confirm = true },
  },
  {
    key = 't',
    mods = 'CTRL',
    action = act.SplitPane {
      direction = 'Left',
      size = { Percent = 50 },
    },
  },
  -- activate pane selection mode with the default alphabet (labels are "a", "s", "d", "f" and so on)
  { key = '8', mods = 'CTRL', action = act.PaneSelect },
  -- activate pane selection mode with numeric labels
  {
    key = '9',
    mods = 'CTRL',
    action = act.PaneSelect {
      alphabet = '1234567890',
    },
  },
  -- show the pane selection mode, but have it swap the active and selected panes
  {
    key = '0',
    mods = 'CTRL',
    action = act.PaneSelect {
      mode = 'SwapWithActive',
    },
  },  
  {
    key = 'h',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'l',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Right',
  },
  {
    key = 'k',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'j',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Down',
  },
  {
    key = 'l',
    mods = 'CTRL|SHIFT',
    action = act.ClearScrollback 'ScrollbackAndViewport',
  },
}

return config
