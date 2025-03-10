local wezterm = require 'wezterm'

return {
	-- color_scheme = 'GitHub',
	-- color_scheme = 'Catppuccin Frappe',
	-- color_scheme = 'Dracula (Official)',
	-- color_scheme = 'JetBrains Darcula',
	-- color_scheme = 'idea',
	-- color_scheme = 'Catppuccin Macchiato',
	color_scheme = 'Catppuccin Mocha',
	-- color_scheme = 'Catppuccin Latte',
	-- color_scheme = 'rose-pine-dawn',
	-- color_scheme = 'Tokyo Night',
	-- colors = {
 	-- 	ansi = {
    --        '#2c3e50', -- index 8: Bright Black (Gray)
    --        '#e74c3c', -- index 9: Bright Red
    --        '#27ae60', -- index 10: Bright Green
    --        '#e67e22', -- index 11: Bright Yellow
	-- 	   '#2980b9', -- index 12: Bright Blue
    --        '#9b59b6', -- index 13: Bright Magenta
    --        '#34495e', -- index 14: Bright Cyan
    --        '#ecf0f1', -- index 15: Bright White
	-- 	},
    --      brights = {
    --        '#2c3e50', -- index 8: Bright Black (Gray)
    --        '#e74c3c', -- index 9: Bright Red
    --        '#27ae60', -- index 10: Bright Green
    --        '#e67e22', -- index 11: Bright Yellow
	-- 	   '#2980b9', -- index 12: Bright Blue
    --        '#9b59b6', -- index 13: Bright Magenta
    --        '#34495e', -- index 14: Bright Cyan
    --        '#ecf0f1', -- index 15: Bright White
    --      },
	-- },
	enable_tab_bar = false,
	font_size = 15.0,
	font = wezterm.font('JetBrains Mono'),
	--macos_window_background_blur = 75,
	--macos_window_background_blur = 30,
	
	-- window_background_image = '/Users/omerhamerman/Downloads/3840x1080-Wallpaper-041.jpg',
	-- window_background_image_hsb = {
	-- 	brightness = 0.01,
	-- 	hue = 1.0,
	-- 	saturation = 0.5,
	-- },
	-- window_background_opacity = 0.92,
	-- window_background_opacity = 1.0,
	-- window_background_opacity = 0.70,
	-- window_background_opacity = 0.20,
	window_decorations = 'RESIZE',
	keys = {
		{
			key = 'f',
			mods = 'CTRL',
			action = wezterm.action.ToggleFullScreen,
		},
		{
			key = '\'',
			mods = 'CTRL',
			action = wezterm.action.ClearScrollback 'ScrollbackAndViewport',
		},
	},
	mouse_bindings = {
	  -- Ctrl-click will open the link under the mouse cursor
	  {
	    event = { Up = { streak = 1, button = 'Left' } },
	    mods = 'CTRL',
	    action = wezterm.action.OpenLinkAtMouseCursor,
	  },
	},
thub}
