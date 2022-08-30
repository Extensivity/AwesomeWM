local awful = require("awful")
local modifier = require("configs.bindings.modifiers")
local mymainmenu = require("widgets.menu")

local function toggle_mainmenu()
    mymainmenu:toggle()
end

local function click_client(c)
    c:activate {
        context = "mouse_click"
    }
end

local function move_client(c)
    c:activate {
        context = "mouse_click",
        action = "mouse_move"
    }
end

local function resize_client(c)
    c:activate {
        context = "mouse_click",
        action = "mouse_resize"
    }
end

local function sloppy_focus(c)
    c:activate {
        context = "mouse_enter",
        raise = false
    }
end

awful.mouse.append_global_mousebindings({
    awful.button {
        modifiers = modifier.none,
        key = 3,
        on_press = toggle_mainmenu,
        description = "show main menu",
        group = "mouse"
    },
    awful.button {
        modifiers = modifier.none,
        key = 4,
        on_press = awful.tag.viewprev,
        description = "view previous tag",
        group = "mouse"
    },
    awful.button {
        modifiers = modifier.none,
        key = 5,
        on_press = awful.tag.viewnext,
        description = "view next tag",
        group = "mouse"
    }
})

client.connect_signal("request::default_mousebindings", function()
    awful.mouse.append_client_mousebindings({
        awful.button {
            modifiers = modifier.none,
            key = 1,
            on_press = click_client,
            description = "click client",
            -- group = "mouse"
        },
        awful.button {
            modifiers = modifier.modkey,
            key = 1,
            on_press = move_client,
            description = "move client",
            group = "mouse"
        },
        awful.button {
            modifiers = modifier.modkey,
            key = 3,
            on_press = resize_client,
            description = "resize client",
            group = "mouse"
        },
    })
end)

-- Didn't know where else to put this.
-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", sloppy_focus)