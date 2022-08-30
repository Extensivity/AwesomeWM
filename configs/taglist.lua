local awful = require("awful")

local tag_names = { "1", "2", "3", "4", "5", "6", "7", "8", "9" }
local default_layout = awful.layout.layouts[1]

screen.connect_signal("request::desktop_decoration",
                      function(s) awful.tag(tag_names, s, default_layout) end)
