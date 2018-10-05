--[[
    Cesious Awesome WM theme
    Created by Culinax
--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")

local os = { getenv = os.getenv }
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

theme = {}
theme.dir = "/usr/share/awesome/themes/cesious"

--theme.font          = "Noto Sans Regular 10"
theme.font	=	"sfns display 11"

local barheight = 200
--theme.bg_normal     = "#646464"
theme.bg_normal      = gears.color({
    type  = "linear",
    from  = { barheight, 0 },
    to    = { barheight, barheight },
  --Light Color Scheme:
    --Gradient
    --stops = { {0, "#f3f3f3" }, {0.1, "#c7c7c7"}, {0.2, "#bbbbbb"}, {1, "#8f8f8f"} }
    --Solid
    stops = { {0, "#c9c9c9" }, {1, "#c9c9c9" } }

  --Light Grey Color Scheme:
    --Gradient
    --stops = { {0, "#b8b8b8" }, {0.1, "#a1a1a1"}, {0.2, "#a8a8a8"}, {1, "#8f8f8f"} }
    --Solid
    --stops = { {0, "#b8b8b8" }, {1, "#b8b8b8" } }

  --Space Grey Color Scheme:
    --Gradient
    --stops = { {0, "#8f8f8f" }, {0.1, "#808080"}, {0.2, "#727272"}, {1, "#646464"} }
    --Solid
    --stops = { {0, "#808080" }, {1, "#808080" } }

  --Dark Grey Color Scheme:
    --stops = { {0, "#555555" }, {0.1, "#474747"}, {0.2, "#393939"}, {1, "#2a2a2a"} }

  --Dark Color Scheme:
    --stops = { {0, "#393939" }, {0.1, "#2a2a2a"}, {0.2, "#1c1c1c"}, {1, "#0e0e0e"} }
})

--theme.bg_focus      = "#2C3940"
theme.bg_focus      = gears.color({
    type  = "linear",
    from  = { barheight, 0 },
    to    = { barheight, barheight },
    stops = { {0, "#93c4ff" }, {0.1, "#83bcff"}, {0.2, "#65acff"}, {1, "#65acff"} }
})

theme.bg_urgent     = "#000000"
theme.bg_minimize   = "#101010"
--theme.bg_systray    = theme.bg_normal
theme.bg_systray    = "#c9c9c9"

theme.fg_normal     = 
  --Light Color Scheme:
    --"#000000"

  --Light Grey Color Scheme:
    --"#000000"

  --Space Grey Color Scheme:
    "#1c1c1c"

  --Dark Grey Color Scheme:
    --"#d2d2d2"

  --Dark Color Scheme
    --"#e8e8e8"

theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ff0000"
theme.fg_minimize   = "#ffffff"

theme.border_width  = 0
theme.border_normal = "#a8a8a8aa"
theme.border_focus  = "#8f8f8faa"
theme.border_marked = "#8f8f8faa"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
--theme.taglist_squares_sel   = theme.dir .. "/taglist/squarefw.png"
--theme.taglist_squares_unsel = theme.dir .. "/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
--theme.menu_submenu_icon = theme.dir .. "/icons/submenu.png"
theme.menu_submenu_icon = "~/.config/awesome/awesome-ban/darkblue/icons/submenu.png"
theme.menu_height = 25
theme.menu_width  = 200
theme.menu_bg_normal = 
  --Light Color Scheme:
    --"#8f8f8f"

  --Light Grey Color Scheme:
    "#8f8f8faa"

  --Space Grey Color Scheme:
    --"#646464"

  --Dark Grey Color Scheme:
    --"#2a2a2a"

  --Dark Color Scheme
    --"#0e0e0e"
theme.menu_bg_focus = gears.color({
    type  = "linear",
    from  = { barheight, 0 },
    to    = { barheight, barheight },
    stops = { {0, "#93c4ff" }, {0.1, "#83bcff"}, {0.2, "#74b4ff"}, {1, "#65acff"} }
})
theme.menu_fg_normal = 
  --Light Color Scheme:
    --"#000000"

  --Light Grey Color Scheme:
    --"#000000"

  --Space Grey Color Scheme:
    "#1c1c1c"

  --Dark Grey Color Scheme:
    --"#d2d2d2"

  --Dark Color Scheme
    --"#e8e8e8"
theme.menu_fg_focus = "#ffffff"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal              = "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/titlebar/close_normal.png"
--theme.titlebar_close_button_focus               = theme.dir .. "/titlebar/close_focus.png"
theme.titlebar_close_button_focus		= "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/titlebar/ontop_focus_active.png"

--theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/titlebar/sticky_normal_inactive.png"
--theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/titlebar/sticky_focus_inactive.png"
--theme.titlebar_sticky_button_normal_active      = theme.dir .. "/titlebar/sticky_normal_active.png"
--theme.titlebar_sticky_button_focus_active       = theme.dir .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive  = "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/titlebar/maximized_normal_inactive.png"
--theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_focus_inactive	= "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/titlebar/floating_focus_active.png"


theme.titlebar_maximized_button_normal_inactive = "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/titlebar/minimize_normal.png"
--theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_focus_inactive 	= "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/titlebar/minimize_focus.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/titlebar/maximized_focus_active.png"

theme.wallpaper = "~/Pictures/cologne_night.jpg"

-- You can use your own layout icons like this:
--theme.layout_fairh      = theme.dir .. "/layouts/fairh.png"
--theme.layout_fairh      = "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/fairh.png"
theme.layout_fairh      = "~/.config/awesome/themes/awesome-macos/themes/macos-bright/icons/fairh.png"
theme.layout_fairv      = theme.dir .. "/layouts/fairv.png"
--theme.layout_floating   = theme.dir .. "/layouts/floating.png"
--theme.layout_floating   = "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/floating.png"
theme.layout_floating   = "~/.config/awesome/themes/awesome-macos/themes/macos-bright/icons/floating.png"
theme.layout_magnifier  = theme.dir .. "/layouts/magnifier.png"
--theme.layout_max        = theme.dir .. "/layouts/max.png"
--theme.layout_max        = "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/max.png"
theme.layout_max        = "~/.config/awesome/themes/awesome-macos/themes/macos-bright/icons/max.png"
theme.layout_fullscreen = theme.dir .. "/layouts/fullscreen.png"
--theme.layout_tilebottom = theme.dir .. "/layouts/tilebottom.png"
--theme.layout_tilebottom = "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/tilebottom.png"
theme.layout_tilebottom = "~/.config/awesome/themes/awesome-macos/themes/macos-bright/icons/tilebottom.png"
theme.layout_tileleft   = theme.dir .. "/layouts/tileleft.png"
--theme.layout_tile       = theme.dir .. "/layouts/tile.png"
--theme.layout_tile       = "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/tile.png"
theme.layout_tile       = "~/.config/awesome/themes/awesome-macos/themes/macos-bright/icons/tile.png"
theme.layout_tiletop    = theme.dir .. "/layouts/tiletop.png"
--theme.layout_spiral     = theme.dir .. "/layouts/spiral.png"
--theme.layout_spiral	= "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/spiral.png"
theme.layout_spiral       = "~/.config/awesome/themes/awesome-macos/themes/macos-bright/icons/spiral.png"
theme.layout_dwindle    = theme.dir .. "/layouts/dwindle.png"

--theme.awesome_icon = theme.dir .. "/icons/manjaro64.png"
--theme.awesome_icon = "~/Downloads/AwesomeLogo.png"
--theme.awesome_icon = "~/.config/awesome/themes/awesome-macos/themes/macos-dark/icons/awesome.png"
theme.awesome_icon = "~/.config/awesome/themes/awesome-macos/themes/macos-bright/icons/awesome.png"

-- Define the icon theme for application icons. If not set then the icons 
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "Arc-Maia"

theme.taglist_fg_focus_font = "sfns display bold 11"

local barheight = 200
local barcolor  = gears.color({
    type  = "linear",
    from  = { barheight, 0 },
    to    = { barheight, barheight },
  --Light Color Scheme:
    --stops = { {0, "#f3f3f3dd" }, {0.1, "#c7c7c7dd"}, {0.2, "#bbbbbbdd"}, {1, "#8f8f8fdd"} }

  --Light Grey Color Scheme:
    --stops = { {0, "#b8b8b8dd" }, {0.1, "#a1a1a1dd"}, {0.2, "#a8a8a8dd"}, {1, "#8f8f8fdd"} }

  --Space Grey Color Scheme:
    stops = { {0, "#8f8f8faa" }, {0.1, "#808080aa"}, {0.2, "#727272aa"}, {1, "#646464aa"} }

  --Dark Grey Color Scheme:
    --stops = { {0, "#555555dd" }, {0.1, "#474747dd"}, {0.2, "#393939dd"}, {1, "#2a2a2add"} }

  --Dark Color Scheme:
    --stops = { {0, "#393939dd" }, {0.1, "#2a2a2add"}, {0.2, "#1c1c1cdd"}, {1, "#0e0e0edd"} }
})
theme.titlebar_bg = barcolor

theme.titlebar_bg_focus = gears.color({
    type  = "linear",
    from  = { barheight, 0 },
    to    = { barheight, barheight },
  --Light Color Scheme:
    --stops = { {0, "#f3f3f3" }, {0.1, "#c7c7c7"}, {0.2, "#bbbbbb"}, {1, "#8f8f8f"} }

  --Light Grey Color Scheme:
    --stops = { {0, "#b8b8b8" }, {0.1, "#a1a1a1"}, {0.2, "#a8a8a8"}, {1, "#8f8f8f"} }
    stops = { {0, "#b8b8b8"}, {0.1, "#a8a8a8"}, {0.2, "#8f8f8f"}, {1, "#727272"} }

  --Space Grey Color Scheme:
    --stops = { {0, "#8f8f8f" }, {0.1, "#808080"}, {0.2, "#727272"}, {1, "#646464"} }

  --Dark Grey Color Scheme:
    --stops = { {0, "#555555" }, {0.1, "#474747"}, {0.2, "#393939"}, {1, "#2a2a2a"} }

  --Dark Color Scheme:
    --stops = { {0, "#393939" }, {0.1, "#2a2a2a"}, {0.2, "#1c1c1c"}, {1, "#0e0e0e"} }
})
theme.titlebar_fg_focus = "#000000"

theme.tasklist_disable_icon = true
theme.tasklist_disable_task_name = true
theme.tasklist_bg_focus = gears.color({
    type  = "linear",
    from  = { barheight, 0 },
    to    = { barheight, barheight },
  --Light Color Scheme:
    --Gradient
    --stops = { {0, "#f3f3f3" }, {0.1, "#c7c7c7"}, {0.2, "#bbbbbb"}, {1, "#8f8f8f"} }
    --Solid
    stops = { {0, "#c9c9c9" }, {1, "#c9c9c9" } }

  --Light Grey Color Scheme:
    --stops = { {0, "#b8b8b8" }, {0.1, "#a1a1a1"}, {0.2, "#a8a8a8"}, {1, "#8f8f8f"} }

  --Space Grey Color Scheme:
    --stops = { {0, "#8f8f8f" }, {0.1, "#808080"}, {0.2, "#727272"}, {1, "#646464"} }
    --Solid
    --stops = { {0, "#808080" }, {1, "#808080" } }

  --Dark Grey Color Scheme:
    --stops = { {0, "#555555" }, {0.1, "#474747"}, {0.2, "#393939"}, {1, "#2a2a2a"} }

  --Dark Color Scheme:
    --stops = { {0, "#393939" }, {0.1, "#2a2a2a"}, {0.2, "#1c1c1c"}, {1, "#0e0e0e"} }
})

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
