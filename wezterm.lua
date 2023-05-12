local wezterm = require 'wezterm'
local a = wezterm.action

return {
  color_scheme = "kanagawabones",
  font = wezterm.font("JetBrainsMono Nerd Font"),
  font_size = 15,
  line_height = 1.2,
  -- cell_width = 0.9,
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
      action = a.SplitVertical,
    }, {
      key = "Enter",
      mods = "CMD|SHIFT",
      action = a.SplitHorizontal,
    }, {
      key = "UpArrow",
      mods = "CMD",
      action = a.ActivatePaneDirection 'Up',
    }, {
      key = "DownArrow",
      mods = "CMD",
      action = a.ActivatePaneDirection 'Down',
    }, {
      key = "LeftArrow",
      mods = "CMD",
      action = a.ActivatePaneDirection 'Left',
    }, {
      key = "RightArrow",
      mods = "CMD",
      action = a.ActivatePaneDirection 'Right',
    }, {
      key = "UpArrow",
      mods = "CMD|SHIFT",
      action = a.AdjustPaneSize { 'Up', 1 },
    }, {
      key = "DownArrow",
      mods = "CMD|SHIFT",
      action = a.AdjustPaneSize { 'Down', 1 },
    }, {
      key = "LeftArrow",
      mods = "CMD|SHIFT",
      action = a.AdjustPaneSize { 'Left', 1 },
    }, {
      key = "RightArrow",
      mods = "CMD|SHIFT",
      action = a.AdjustPaneSize { 'Right', 1 },
    }, {
      key = "c",
      mods = "CMD",
      action = a.Multiple {
        a.SendKey { key = "\"" },
        a.SendKey { key = "+" },
        a.SendKey { key = "y" },
      }
    }, {
      key = "s",
      mods = "CMD",
      action = a.Multiple {
        a.SendKey { key = "Escape" },
        a.SendKey { key = ":" },
        a.SendKey { key = "w" },
        a.SendKey { key = "Enter" },
      }
    }, {
      key = "a",
      mods = "CMD",
      action = a.Multiple {
        a.SendKey { key = "Escape" },
        a.SendKey { key = "g" },
        a.SendKey { key = "g" },
        a.SendKey { key = "V" },
        a.SendKey { key = "G" },
      }
    }, {
      key = "f",
      mods = "CMD|SHIFT",
      action = a.Multiple {
        a.SendKey { key = "Escape" },
        a.SendKey { key = ":" },
        a.SendKey { key = "T" },
        a.SendKey { key = "e" },
        a.SendKey { key = "l" },
        a.SendKey { key = "e" },
        a.SendKey { key = "s" },
        a.SendKey { key = "c" },
        a.SendKey { key = "o" },
        a.SendKey { key = "p" },
        a.SendKey { key = "e" },
        a.SendKey { key = " " },
        a.SendKey { key = "l" },
        a.SendKey { key = "i" },
        a.SendKey { key = "v" },
        a.SendKey { key = "e" },
        a.SendKey { key = "_" },
        a.SendKey { key = "g" },
        a.SendKey { key = "r" },
        a.SendKey { key = "e" },
        a.SendKey { key = "p" },
        a.SendKey { key = "Enter" },
      }
    }
  }
}
