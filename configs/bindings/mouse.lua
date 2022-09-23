local awful = require("awful")
local modifier = require("configs.bindings.modifiers")
local mymainmenu = require("widgets.menu")

local function toggle_mainmenu() mymainmenu:toggle() end

local function click_client(c) c:activate { context = "mouse_click" } end

local function move_client(c)
    c:activate { context = "mouse_click", action = "mouse_move" }
end

local function resize_client(c)
    c:activate { context = "mouse_click", action = "mouse_resize" }
end

local function sloppy_focus(c) c:activate {
        context = "mouse_enter",
        raise = false
    }
end

awful.mouse.append_global_mousebindings {
    awful.button({}, 3, toggle_mainmenu),
    awful.button({}, 4, awful.tag.viewprev),
    awful.button({}, 5, awful.tag.viewnext),
}

client.connect_signal("request::default_mousebindings", function()
    awful.mouse.append_client_mousebindings {
        awful.button(modifier.none, 1, click_client),
        awful.button(modifier.modkey, 1, move_client),
        awful.button(modifier.modkey, 3, resize_client),
    }
end)

-- Didn't know where else to put this.
-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", sloppy_focus)
