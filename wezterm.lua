local wezterm = require 'wezterm'

-- Kanagawa with nice tab bars
local kanagawa_custom = wezterm.color.get_builtin_schemes()["kanagawabones"]
kanagawa_custom.tab_bar = {
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
}

-- Switch theme based on appearance
local function colorscheme(appearance)
  if appearance:find "Dark" then
    return "kanagawa_custom"
  else
    return "Catppuccin Latte"
  end
end

-- General config
local config = {
  color_schemes = {
    ["kanagawa_custom"] = kanagawa_custom,
  },
  color_scheme = colorscheme(wezterm.gui.get_appearance()),
  font = wezterm.font("SFMono Nerd Font"),
  font_size = 15,
  line_height = 1.2,
  cell_width = 0.9,
  use_fancy_tab_bar = false,
  force_reverse_video_cursor = true,
  hide_tab_bar_if_only_one_tab = true,
  adjust_window_size_when_changing_font_size = false,
  max_fps = 120,
  tab_max_width = 32,
  window_decorations = "RESIZE",
  term = "wezterm",
}

local a = wezterm.action

local function map(things)
  local t = {}
  for key in string.gmatch(things, '([^,]+)') do
    table.insert(t, a.SendKey { key = key })
  end
  return t
end

config.keys = {
  {
    key = "h",
    mods = "CTRL",
    action = a.ActivateCopyMode,
  },
  {
    key = "k",
    mods = "CMD",
    action = a.ClearScrollback 'ScrollbackAndViewport',
  }, {
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
    action = a.Multiple(map('",+,y')),
  }, {
    key = "s",
    mods = "CMD",
    action = a.Multiple(map("Escape,:,w,Enter")),
  }, {
    key = "a",
    mods = "CMD",
    action = a.Multiple(map("Escape,g,g,V,G")),
  }, {
    key = "f",
    mods = "CMD|SHIFT",
    action = a.Multiple(map("Escape,:,T,e,l,e,s,c,o,p,e, ,l,i,v,e,_,g,r,e,p,Enter")),
  }, {
    key = "^",
    mods = "CTRL|SHIFT",
    action = a.DisableDefaultAssignment,
  },
}


return config
