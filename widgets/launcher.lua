local awful = require("awful")
local beautiful = require("beautiful")
local menu = require("widgets.menu")

return awful.widget.launcher({image = beautiful.awesome_icon, menu = menu})
