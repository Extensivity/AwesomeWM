local awful = require("awful")
local wibox = require("wibox")
local mylauncher = require("widgets.launcher")
local mytextclock = require("widgets.top-panel.clock")
local mypromptbox = require("widgets.top-panel.prompt")
local mylayoutbox = require("widgets.top-panel.layout")
local mytaglist = require("widgets.top-panel.taglist")
local mytasklist = require("widgets.top-panel.tasklist")

screen.connect_signal("request::desktop_decoration", function(s)
    s.mypromptbox = mypromptbox()
    s.mylayoutbox = mylayoutbox(s)
    s.mytaglist = mytaglist(s)
    s.mytasklist = mytasklist(s)

    local section = {
        left = {
            layout = wibox.layout.fixed.horizontal,
            mylauncher,
            s.mytaglist,
            s.mypromptbox
        },

        middle = s.mytasklist,

        right = {
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            mytextclock,
            s.mylayoutbox
        }
    }

    -- Create the wibox
    s.mywibox = awful.wibar {
        position = "top",
        screen = s,
        widget = {
            layout = wibox.layout.align.horizontal,
            section.left,
            section.middle,
            section.right
        }
    }
end)
