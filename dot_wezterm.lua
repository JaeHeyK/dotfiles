-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'HybridSimple'
config.line_height = 1.0
config.font_size = 10
config.font = wezterm.font_with_fallback {
	{family = 'VictorMono Nerd Font', weight = 'Bold'},
	{family = 'NanumGothicCoding', weight = 'Bold'}
}

config.color_schemes = {
	['HybridSimple'] = {
		foreground = "#B7BCBA",
		background = "#161719",
		selection_fg = "#161719",
		selection_bg = "#E58A50",
		cursor_fg = "#E58A50",
		cursor_bg = "#B7BCBA",
		ansi = {
			"#2A2E33",
                        "#B84D51",
                        "#B3BF5A",
                        "#E4B55E",
                        "#6E90B0",
                        "#A17EAC",
                        "#7FBFB4",
                        "#B5B9B6",
		},
		brights = {
			"#1D1F22",
                        "#B84D51",
                        "#B3BF5A",
                        "#E58A50",
                        "#6E90B0",
                        "#A17EAC",
                        "#4D7B74",
                        "#5A626A",
		},
	}
}

config.window_frame = {
	font = wezterm.font { family = 'SUIT', weight = 'Bold' },
}

config.colors = {
	tab_bar = {
		active_tab = {
			fg_color = "#B7BCBA",
			bg_color = "#161719",
		}
	}
}

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.default_prog = {'C:\\Program Files\\PowerShell\\7\\pwsh.exe', '/nologo'}
config.default_cursor_style = 'SteadyUnderline'
config.underline_thickness = '1.5pt'
config.harfbuzz_features = {'calt=0', 'clig=0', 'liga=0'}
config.front_end="OpenGL"

local act = wezterm.action

config.keys = {
	{
		key = 't',
		mods = 'CTRL',
		action = act.SpawnTab 'DefaultDomain',
	},
	{
		key = 'w',
		mods = 'CTRL',
		action = act.CloseCurrentTab { confirm = false },
	},
	{
		key = '!',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SpawnCommandInNewTab {
			label = 'server Honeycomb',
			args = { 'ssh', 'hh' },
		},
	},

}

config.audible_bell = 'Disabled'

-- and finally, return the configuration to wezterm
return config
