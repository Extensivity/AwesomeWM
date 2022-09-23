local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local wifi = require("events.wifi")

local wireless_network = {}

local function notification(message)
    require('naughty').notify {
        title = "Network Wireless Widget",
        message = message,
        timeout = 5
    }
end

local function worker(user_args)
    local args = user_args or {}
    args.interface = args.interface or "wlan0"
    args.timeout = 5
    args.icons = args.icons or beautiful.widgets.network.wireless.icons
    args.font = args.font or beautiful.font

    wireless_network.widget = wibox.widget {
        {
            {
                id = "icon",
                image = args.icons[1],
                forced_height = 16,
                forced_width = 16,
                widget = wibox.widget.imagebox
            },
            valign = "center",
            layout = wibox.container.place
        },
        {
            id = "text",
            text = "DC",
            font = args.font,
            widget = wibox.widget.textbox
        },
        spacing = 4,
        layout = wibox.layout.fixed.horizontal,
        set_value = function(self, percent)
            local level = percent // 20
            local icon = args.icons[level + 2]
            self:get_children_by_id("icon")[1].image = icon

            local text = "DC"
            if percent > -1 then text = tostring(percent) .. "%" end
            self:get_children_by_id("text")[1].text = text
        end
    }

    local function fetch_tooltip()
        print(wifi.status.state)        
        if wifi.status.state == "disconnected" then return "Wireless network is disconnected" end
        return "<span font_desc=\"" .. args.font .. "\">"
            .. "┌[ " .. args.interface .. " ]\n"
            .. "├SSID:\t\t" .. wifi.status["connected network"] .. "\n"
            .. "├IP:\t\t\t"..wifi.status["ipv4 address"].."\n"
            .. "└Bit rate:\t" .. wifi.status["txbitrate"]
            .. "</span>"
    end

    wireless_network.tooltip = awful.tooltip {
        mode = "outside",
        preferred_positions = { "bottom" }
    }

    wireless_network.tooltip:add_to_object(wireless_network.widget)
    wireless_network.widget:connect_signal("mouse::enter", function()
        wireless_network.tooltip.markup = fetch_tooltip()
    end)

    awesome.connect_signal("wifi::signal", function(signal)
        wireless_network.widget:set_value(math.floor(signal))
    end)

    wifi:start(args.interface, args.timeout)
    return wireless_network.widget
end

return setmetatable(wireless_network, { __call = function(_, ...)
    return worker(...)
end })
