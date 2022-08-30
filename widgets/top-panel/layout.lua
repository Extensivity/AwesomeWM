local awful = require("awful")

local function inc_layout(inc) return function() awful.layout.inc(inc) end end

return function(s)
    return awful.widget.layoutbox {
        screen = s,
        buttons = {
            awful.button({}, 1, inc_layout(1)),
            awful.button({}, 3, inc_layout(-1)),
            awful.button({}, 4, inc_layout(-1)),
            awful.button({}, 5, inc_layout(1))
        }
    }
end
