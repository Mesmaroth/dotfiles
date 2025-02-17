local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Kanagawa (Gogh)'
config.default_prog = {'powershell.exe'}
config.font = wezterm.font('FiraCode Nerd Font')
config.default_cursor_style = 'BlinkingBlock'
config.front_end = "OpenGL"
config.animation_fps = 60
config.cursor_blink_rate = 500

return config
