local ruled = require("ruled")
local awful = require("awful")

ruled.client.connect_signal("request::rules", function()
    -- All clients will match this rule.
    ruled.client.append_rule {
        id = "global",
        rule = {},
        properties = {
            focus = awful.client.focus.filter,
            raise = true,
            screen = awful.screen.preferred,
            placement = awful.placement.no_overlap +
                awful.placement.no_offscreen
        }
    }

    -- Floating clients.
    ruled.client.append_rule {
        id = "floating",
        rule_any = {
            instance = { "copyq", "pinentry" },
            class = {
                "Arandr", "Blueman-manager", "Gpick", "Kruler", "Sxiv",
                "Tor Browser", "Wpa_gui", "veromix", "xtightvncviewer"
            },
            -- Note that the name property shown in xprop might be set slightly after creation of the client
            -- and the name shown there might not match defined rules here.
            name = {
                "Event Tester" -- xev.
            },
            role = {
                "AlarmWindow", -- Thunderbird's calendar.
                "ConfigManager", -- Thunderbird's about:config.
                "pop-up" -- e.g. Google Chrome's (detached) Developer Tools.
            }
        },
        properties = { floating = true }
    }

    -- Add titlebars to normal clients and dialogs
    ruled.client.append_rule {
        id = "titlebars",
        rule_any = { type = { "normal", "dialog" } },
        properties = { titlebars_enabled = true }
    }

    ruled.client.append_rule {
        rule_any = {
            class = {
                "Steam",
                "discord",
                "[Ss]potify"
            }
        },
        properties = {
            maximized_vertical = true,
            maximized_horizontal = true
        }
    }

    ruled.client.append_rule {
        rule = { class = "discord" },
        properties = { screen = 2, tag = "2" }
    }

    -- This rule doesn't work until Spotify fixes it themselves.
    -- Currently, it doesn't assign the classname until just before
    -- it becomes visible. Unfortunally AwesomeWM ruled only applies
    -- when that information is grabbed, aka when an application is
    -- launched or when AwesomeWM restarts.
    -- https://stackoverflow.com/a/39319003
    ruled.client.append_rule {
        rule = { class = "[Ss]potify" },
        properties = { screen = 2, tag = "3" }
    }

    ruled.client.append_rule {
        rule = { class = "Steam" },
        properties = { screen = 2, tag = "42" }
    }
end)

ruled.notification.connect_signal("request::rules", function()
    -- All notifications will match this rule.
    ruled.notification.append_rule {
        rule = {},
        properties = { screen = awful.screen.preferred, implicit_timeout = 5 }
    }
end)
