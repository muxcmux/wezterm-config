local wezterm = require 'wezterm';

return {
  color_scheme = "kanagawabones",
  font = wezterm.font("SFMono Nerd Font"),
  font_size = 15,
  line_height = 1.2,
  cell_width = 0.9,
  use_fancy_tab_bar = false,
  force_reverse_video_cursor = true,
  hide_tab_bar_if_only_one_tab = true,
  window_decorations = "RESIZE",
  front_end = "WebGpu",
  colors = {
    tab_bar = {
      background = "black",
      active_tab = {
        bg_color = "#1f1f28",
        fg_color = "#dcd7ba",
      },
      inactive_tab = {
        bg_color = "black",
        fg_color = "79797c",
      },
      new_tab = {
        bg_color = "black",
        fg_color = "79797c",
      },
    },
  },
  keys = {
    {
      key = "Enter",
      mods = "CMD",
      action = wezterm.action.SplitVertical,
    }, {
      key = "Enter",
      mods = "CMD|SHIFT",
      action = wezterm.action.SplitHorizontal,
    }, {
      key = "UpArrow",
      mods = "CMD",
      action = wezterm.action.ActivatePaneDirection 'Up',
    }, {
      key = "DownArrow",
      mods = "CMD",
      action = wezterm.action.ActivatePaneDirection 'Down',
    }, {
      key = "LeftArrow",
      mods = "CMD",
      action = wezterm.action.ActivatePaneDirection 'Left',
    }, {
      key = "RightArrow",
      mods = "CMD",
      action = wezterm.action.ActivatePaneDirection 'Right',
    }, {
      key = "UpArrow",
      mods = "CMD|SHIFT",
      action = wezterm.action.AdjustPaneSize { 'Up', 1 },
    }, {
      key = "DownArrow",
      mods = "CMD|SHIFT",
      action = wezterm.action.AdjustPaneSize { 'Down', 1 },
    }, {
      key = "LeftArrow",
      mods = "CMD|SHIFT",
      action = wezterm.action.AdjustPaneSize { 'Left', 1 },
    }, {
      key = "RightArrow",
      mods = "CMD|SHIFT",
      action = wezterm.action.AdjustPaneSize { 'Right', 1 },
    },
  }
}
