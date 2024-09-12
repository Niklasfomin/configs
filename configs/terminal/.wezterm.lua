local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 21

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.color_scheme = "Adventure Time (Gogh)"
config.window_background_opacity = 1.0
config.macos_window_background_blur = 0

-- Remap keys
config.keys = {
  -- Remap copy mode to Cmd + Shift + C
  {key = 'C', mods = 'CMD|SHIFT', action = wezterm.action.ActivateCopyMode},

  -- Split vertically with Cmd + Shift + V
  {key = 'V', mods = 'CMD|SHIFT', action = wezterm.action.SplitVertical {domain = 'CurrentPaneDomain'}},

  -- Split horizontally with Cmd + Shift + H
  {key = 'H', mods = 'CMD|SHIFT', action = wezterm.action.SplitHorizontal {domain = 'CurrentPaneDomain'}},

  -- Vim-style pane navigation using Alt + Shift + h/j/k/l
  {key = 'h', mods = 'ALT|SHIFT', action = wezterm.action.ActivatePaneDirection 'Left'},
  {key = 'j', mods = 'ALT|SHIFT', action = wezterm.action.ActivatePaneDirection 'Down'},
  {key = 'k', mods = 'ALT|SHIFT', action = wezterm.action.ActivatePaneDirection 'Up'},
  {key = 'l', mods = 'ALT|SHIFT', action = wezterm.action.ActivatePaneDirection 'Right'},

  -- Scroll up quickly with Alt + Shift + k
  {key = 'k', mods = 'ALT|SHIFT', action = wezterm.action.ScrollByPage(-1)},

  -- Scroll down quickly with Alt + Shift + j
  {key = 'j', mods = 'ALT|SHIFT', action = wezterm.action.ScrollByPage(1)},

  -- Move one word left with Option + U
  {key = 'u', mods = 'OPT', action = wezterm.action.SendString('\x1bb')},

  -- Move one word right with Option + P
  {key = 'o', mods = 'OPT', action = wezterm.action.SendString('\x1bf')},

  -- Move to the start of the line with Option + A
  {key = 'a', mods = 'OPT', action = wezterm.action.SendString('\x01')},

  -- Move to the end of the line with Option + E
  {key = 'e', mods = 'OPT', action = wezterm.action.SendString('\x05')},

  -- Keybinding for Ctrl + L to clear the screen
  {key = 'L', mods = 'CTRL', action = wezterm.action.SendString('\x0c')},
}

-- Automatically reload the configuration
config.automatically_reload_config = true

-- Return the configuration to wezterm
return config
