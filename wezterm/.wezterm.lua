local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Kanagawa (Gogh)'
config.default_prog = {'powershell.exe'}
config.font = wezterm.font('FiraCode Nerd Font')
config.default_cursor_style = 'BlinkingBlock'
config.front_end = "OpenGL"
config.animation_fps = 60
config.cursor_blink_rate = 500
config.initial_cols = 120
config.initial_rows = 50

wezterm.on("gui-startup", function(cmd)
  local screen = wezterm.gui.screens().active
  local ratio = 0.4
  local width, height = screen.width * ratio, (screen.height * 2) * ratio
  local tab, pane, window = wezterm.mux.spawn_window {
    position = {
      x = (screen.width - width) / 2,
      y = (screen.height - height) / 2,
      origin = 'ActiveScreen'}
    }
    window:gui_window():set_inner_size(width, height)
end)

return config
