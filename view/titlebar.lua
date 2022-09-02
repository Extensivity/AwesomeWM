local awful = require("awful")
local wibox = require("wibox")

local function move_client(c)
    return function()
        c:activate { context = "titlebar", action = "mouse_move" }
    end
end

local function resize_client(c)
    return function()
        c:activate { context = "titlebar", action = "mouse_resize" }
    end
end

client.connect_signal("request::titlebars", function(c)
    -- buttons for the titlebar
    local buttons = {
        awful.button({}, 1, move_client(c)),
        awful.button({}, 3, resize_client(c))
    }

    local title_widget = {
        align = "center",
        widget = awful.titlebar.widget.titlewidget(c)
    }

    local section = {
        left = { -- Left
            awful.titlebar.widget.iconwidget(c),
            buttons = buttons,
            layout = wibox.layout.fixed.horizontal
        },
        middle = { -- Middle
            title_widget,
            buttons = buttons,
            layout = wibox.layout.flex.horizontal
        },
        right = { -- Right
            awful.titlebar.widget.floatingbutton(c),
            awful.titlebar.widget.maximizedbutton(c),
            awful.titlebar.widget.stickybutton(c),
            awful.titlebar.widget.ontopbutton(c),
            awful.titlebar.widget.closebutton(c),
            layout = wibox.layout.fixed.horizontal()
        }
    }

    awful.titlebar(c).widget = {
        section.left,
        section.middle,
        section.right,
        layout = wibox.layout.align.horizontal
    }

    if c.requests_no_titlebar then awful.titlebar.hide(c) end
end)
