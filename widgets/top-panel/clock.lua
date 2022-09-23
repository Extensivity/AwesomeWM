local awful = require("awful")
local wibox = require("wibox")

local clock = wibox.widget.textclock()
local calendar = awful.widget.calendar_popup.month()

calendar:attach(clock, "tr")

return clock
