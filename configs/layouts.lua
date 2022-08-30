local awful = require("awful")
local layouts = awful.layout.suit

tag.connect_signal("request::default_layouts", function()
    awful.layout.append_default_layouts({
        layouts.floating, layouts.tile, layouts.tile.left, layouts.tile.bottom,
        layouts.tile.top, layouts.fair, layouts.fair.horizontal, layouts.spiral,
        layouts.spiral.dwindle, layouts.max, layouts.max.fullscreen,
        layouts.magnifier, layouts.corner.nw
    })
end)
