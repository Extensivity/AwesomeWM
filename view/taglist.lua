local awful = require("awful")
local taglist = require("configs.taglist")

screen.connect_signal("request::desktop_decoration", function(s)
    local tag_names = taglist[s.index].tag_names
    local layout = taglist[s.index].layout
    awful.tag(tag_names, s, layout)
end)
