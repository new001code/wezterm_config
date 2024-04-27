local wezterm = require("wezterm")

local bg_pic = wezterm.home_dir .. "/.config/wezterm/bg_pic/hello.jpg"

local config = {
	--[[窗口外观设置--]]
	--取消windows的原生标题栏
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	-- 显示标签
	enable_tab_bar = false,
	-- 当只有一个tab时隐藏标签栏，默认为false
	hide_tab_bar_if_only_one_tab = false,
	-- 标签栏置于底部
	tab_bar_at_bottom = false,
	-- tab选项卡的最大长度
	tab_max_width = 16,

	-- 页边距
	window_padding = {
		left = 10,
		right = 15,
		top = 8,
		bottom = 5,
	},

	-- 设置窗口的背景图片
	-- 图像将被缩放到以适合窗口的大小，非常大的图片可能会降低渲染性能并占用GPU。
	window_background_image = bg_pic,

	window_background_image_hsb = {
		-- 图片亮度
		brightness = 0.3,
		-- 色度（色调），乘数， 设置为1则保持不变
		hue = 1.0,
		-- 饱和度
		saturation = 1.0,
	},
	-- 透明背景
	-- window_background_opacity = 1,
	-- 文本背景的透明度
	text_background_opacity = 0.8,

	-- 设置窗口的背景颜色渐变，设置时会忽略设置的背景图片
	-- window_background_gradient = {
	--     -- Can be "Vertical" or "Horizontal".  Specifies the direction
	--     -- in which the color gradient varies.  The default is "Horizontal",
	--     -- with the gradient going from left-to-right.
	--     -- Linear and Radial gradients are also supported; see the other
	--     -- examples below
	--     orientation = 'Vertical',

	--     -- Specifies the set of colors that are interpolated in the gradient.
	--     -- Accepts CSS style color specs, from named colors, through rgb
	--     -- strings and more
	--     colors = {
	--         '#0f0c29',
	--         '#302b63',
	--         '#24243e',
	--     },
	--     -- Specifies the interpolation style to be used.
	--     -- "Linear", "Basis" and "CatmullRom" as supported.
	--     -- The default is "Linear".
	--     interpolation = 'Linear',

	--     -- How the colors are blended in the gradient.
	--     -- "Rgb", "LinearRgb", "Hsv" and "Oklab" are supported.
	--     -- The default is "Rgb".
	--     blend = 'Rgb',

	--     -- To avoid vertical color banding for horizontal gradients, the
	--     -- gradient position is randomly shifted by up to the `noise` value
	--     -- for each pixel.
	--     -- Smaller values, or 0, will make bands more prominent.
	--     -- The default value is 64 which gives decent looking results
	--     -- on a retina macbook pro display.
	--     -- noise = 64,

	--     -- By default, the gradient smoothly transitions between the colors.
	--     -- You can adjust the sharpness by specifying the segment_size and
	--     -- segment_smoothness parameters.
	--     -- segment_size configures how many segments are present.
	--     -- segment_smoothness is how hard the edge is; 0.0 is a hard edge,
	--     -- 1.0 is a soft edge.

	--     -- segment_size = 11,
	--     -- segment_smoothness = 0.0,
	-- },

	-- 设置非活动窗口的样式
	inactive_pane_hsb = {
		saturation = 0.9,
		brightness = 0.8,
	},

	-- 花式的标签栏
	-- window_frame = {
	--     -- tab选项卡中字体
	--     font = wezterm.font { family = 'JetBrains Mono', weight = 'Bold' },
	--     -- tab选项卡字体大小
	--     -- Default to 10.0 on Windows but 12.0 on other systems
	--     font_size = 12.0,

	--     -- 聚焦的tab栏背景颜色
	--     active_titlebar_bg = '#333333',

	--     -- 非聚焦的tab背景颜色
	--     inactive_titlebar_bg = '#333333',
	-- },

	-- 显示滚动条
	enable_scroll_bar = true,
	-- 颜色
	colors = {

		-- 默认文本颜色
		foreground = "#1F6EC9",
		-- 终端背景颜色
		background = "#151415",

		-- 光标是块时，光标的颜色
		cursor_bg = "#86DB45",
		-- 块状光标移动至字符时，字符的颜色
		cursor_fg = "#622E96",
		--当光标样式设置为Block时，指定光标的边框颜色，
		--或当光标样式设置为时垂直条或水平条的颜色。
		--加横线或下划线。
		cursor_border = "#0FCCD9",

		-- 选中文本的颜色，none就是白色
		selection_fg = "none",
		-- 选中文本的背景颜色
		selection_bg = "#0e6edd",

		--滚动条的颜色；表示当前视口的部分
		scrollbar_thumb = "#44475a",

		--窗格之间分割线的颜色
		split = "#6272a4",

		ansi = { "#21222C", "#FF5555", "#50FA7B", "#F1FA8C", "#27E1D5", "#FF79C6", "#8BE9FD", "#9FA816" },
		brights = { "#1A9938", "#FF6E6E", "#69FF94", "#25A948", "#21BEDD", "#FF92DF", "#A4FFFF", "#DA9A56" },

		-- tab_bar = {
		--     --沿窗口顶部的条形图的颜色--（当使用花式的标签栏时不适用）
		--     background = "#282a36",

		--     -- 当前窗口处于活动状态的标签
		--     active_tab = {
		--         -- The color of the background area for the tab
		--         bg_color = "#bd93f9",
		--         -- The color of the text for the tab
		--         fg_color = "#282a36",

		--         -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
		--         -- label shown for this tab.
		--         -- The default is "Normal"
		--         intensity = "Normal",

		--         -- Specify whether you want "None", "Single" or "Double" underline for
		--         -- label shown for this tab.
		--         -- The default is "None"
		--         underline = "None",

		--         -- Specify whether you want the text to be italic (true) or not (false)
		--         -- for this tab.  The default is false.
		--         italic = false,

		--         -- Specify whether you want the text to be rendered with strikethrough (true)
		--         -- or not for this tab.  The default is false.
		--         strikethrough = false,
		--     },

		--     -- Inactive tabs are the tabs that do not have focus
		--     -- 闲置的tab
		--     inactive_tab = {
		--         bg_color = "#282a36",
		--         fg_color = "#f8f8f2",

		--         -- The same options that were listed under the `active_tab` section above
		--         -- can also be used for `inactive_tab`.
		--     },

		--     -- You can configure some alternate styling when the mouse pointer
		--     -- moves over inactive tabs
		--     inactive_tab_hover = {
		--         bg_color = "#6272a4",
		--         fg_color = "#f8f8f2",
		--         italic = true,

		--         -- The same options that were listed under the `active_tab` section above
		--         -- can also be used for `inactive_tab_hover`.
		--     },

		--     -- The new tab button that let you create new tabs
		--     new_tab = {
		--         bg_color = "#282a36",
		--         fg_color = "#f8f8f2",

		--         -- The same options that were listed under the `active_tab` section above
		--         -- can also be used for `new_tab`.
		--     },

		--     -- You can configure some alternate styling when the mouse pointer
		--     -- moves over the new tab button
		--     new_tab_hover = {
		--         bg_color = "#ff79c6",
		--         fg_color = "#f8f8f2",
		--         italic = true,

		--         -- The same options that were listed under the `active_tab` section above
		--         -- can also be used for `new_tab_hover`.
		--     },
		-- },
	},

	--[[字体设置]]
	font_size = 18,
	font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true }),

	--[[启动程序]]

	-- 默认程序
	default_prog = { "pwsh", "-NoLogo", "-WorkingDirectory", "D:/" },
	-- 指定工作目录--windows指定会闪退？
	-- default_cwd = "d:",

	--[[光标设置]]
	-- 光标样式
	default_cursor_style = "BlinkingBar",

	--[[按键绑定]]

	-- 取消所有默认的快捷键
	disable_default_key_bindings = true,
	-- 设置leader键
	leader = {
		key = "Space",
		mods = "SHIFT",
		timeout_milliseconds = 1500,
	},
	keys = {
		-- 非leader

		-- 	-- F11 切换全屏
		{ key = "F11", mods = "NONE", action = wezterm.action.ToggleFullScreen },
		-- 	-- Ctrl+Shift++ 字体增大
		{ key = "+", mods = "SHIFT|CTRL", action = wezterm.action.IncreaseFontSize },
		-- 	-- Ctrl+Shift+- 字体减小
		{ key = "_", mods = "SHIFT|CTRL", action = wezterm.action.DecreaseFontSize },
		-- Ctrl+Shift+C 复制选中区域
		{ key = "C", mods = "SHIFT|CTRL", action = wezterm.action.CopyTo("Clipboard") },
		-- Ctrl+Shift+N 新窗口
		{ key = "N", mods = "SHIFT|CTRL", action = wezterm.action.SpawnWindow },
		-- Ctrl+Shift+T 水平新 tab
		{
			key = "T",
			mods = "SHIFT|CTRL",
			action = wezterm.action.SplitHorizontal({
				domain = "CurrentPaneDomain",
			}),
		},
		-- Ctrl+Alt+T 垂直新 tab
		{
			key = "T",
			mods = "SHIFT|CTRL|ALT",
			action = wezterm.action.SplitPane({
				direction = "Down",
				top_level = true,
				size = { Percent = 15 },
			}),
		},
		-- Ctrl+Shift+Enter 显示启动菜单
		-- {
		-- 	key = "Enter",
		-- 	mods = "SHIFT|CTRL",
		-- 	action = wezterm.action.ShowLauncherArgs({ flags = "FUZZY|TABS|LAUNCH_MENU_ITEMS" }),
		-- },
		-- Ctrl+Shift+V 粘贴剪切板的内容
		{ key = "V", mods = "SHIFT|CTRL", action = wezterm.action.PasteFrom("Clipboard") },
		-- Ctrl+Shift+W 关闭 tab 且不进行确认
		{ key = "W", mods = "SHIFT|CTRL", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
		-- Ctrl+Shift+PageUp 向上滚动一页
		{ key = "PageUp", mods = "SHIFT|CTRL", action = wezterm.action.ScrollByPage(-1) },
		-- Ctrl+Shift+PageDown 向下滚动一页
		{ key = "PageDown", mods = "SHIFT|CTRL", action = wezterm.action.ScrollByPage(1) },
		-- Ctrl+Shift+UpArrow 向上滚动一行
		{ key = "UpArrow", mods = "SHIFT|CTRL", action = wezterm.action.ScrollByLine(-1) },
		-- Ctrl+Shift+DownArrow 向下滚动一行
		{ key = "DownArrow", mods = "SHIFT|CTRL", action = wezterm.action.ScrollByLine(1) },
		{ key = "H", mods = "SHIFT|CTRL|ALT", action = wezterm.action.AdjustPaneSize({ "Left", 5 }) },
		{ key = "L", mods = "SHIFT|CTRL|ALT", action = wezterm.action.AdjustPaneSize({ "Right", 5 }) },
		{ key = "K", mods = "SHIFT|CTRL|ALT", action = wezterm.action.AdjustPaneSize({ "Up", 5 }) },
		{ key = "J", mods = "SHIFT|CTRL|ALT", action = wezterm.action.AdjustPaneSize({ "Down", 5 }) },
		{
			key = "LeftArrow",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "RightArrow",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "UpArrow",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Up"),
		},
		{
			key = "DownArrow",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ActivatePaneDirection("Down"),
		},

		-- leader

		{
			key = "b",
			mods = "LEADER",
			action = wezterm.action_callback(function(window)
				local overrides = window:get_config_overrides() or {}
				if not overrides.window_background_image then
					overrides.window_background_opacity = 1
					overrides.window_background_image = bg_pic
				else
					overrides.window_background_image = nil
					overrides.window_background_opacity = 0
				end
				window:set_config_overrides(overrides)
			end),
		},
	},

	--[[一些行为]]
	--更改字体大小是否修改窗口大小
	adjust_window_size_when_changing_font_size = false,
	-- 关闭时不进行确认
	window_close_confirmation = "NeverPrompt",
	-- 程序退出后立即关闭窗口
	exit_behavior = "Close",
	-- 反转光标颜色
	force_reverse_video_cursor = true,

	mouse_bindings = {
		{
			event = { Drag = { streak = 1, button = "Left" } },
			mods = "SUPER",
			action = wezterm.action.StartWindowDrag,
		},
		{
			event = { Drag = { streak = 1, button = "Left" } },
			mods = "CTRL|SHIFT",
			action = wezterm.action.StartWindowDrag,
		},
	},
}

return config
