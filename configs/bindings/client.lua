local awful = require("awful")
local modifier = require("configs.bindings.modifiers")

local function focus_history()
    awful.client.focus.history.previous()
    if client.focus then client.focus:raise() end
end

local function focus_byidx(idx)
    return function() awful.client.focus.byidx(idx) end
end

local function unminimize()
    local c = awful.client.restore()
    if c then c:activate { raise = true, context = "key.unminimize" } end
end

local function swap_client_byidx(idx)
    return function() awful.client.swap.byidx(idx) end
end

local function toggle_fullscreen(c)
    c.fullscreen = not c.fullscreen
    c:raise()
end

local function close_client(c) c:kill() end

local function move_to_master(c) c:swap(awful.client.getmaster()) end

local function move_to_screen(c) c:move_to_screen() end

local function keep_on_top(c) c.ontop = not c.ontop end

local function minimize(c) c.minimized = true end

local function toggle_maximize(c)
    c.maximized = not c.maximized
    c:raise()
end

local function toggle_maximize_vertically(c)
    c.maximized_vertical = not c.maximized_vertical
    c:raise()
end

local function toggle_maximize_horizontally(c)
    c.maximized_horizontal = not c.maximized_horizontal
    c:raise()
end

awful.keyboard.append_global_keybindings {
    awful.key {
        description = "focus next by index",
        key = "j",
        modifiers = modifier.modkey,
        on_press = focus_byidx(1),
        group = "client"
    }, awful.key {
        description = "focus previous by index",
        key = "k",
        modifiers = modifier.modkey,
        on_press = focus_byidx(-1),
        group = "client"
    }, awful.key {
        description = "go back",
        key = "Tab",
        modifiers = modifier.modkey,
        on_press = focus_history,
        group = "client"
    }, awful.key {
        description = "restore minimized",
        key = "n",
        modifiers = modifier.mod_ctrl,
        on_press = unminimize,
        group = "client"
    }, awful.key {
        description = "swap with next client by index",
        key = "j",
        modifiers = modifier.mod_shift,
        on_press = swap_client_byidx(1),
        group = "client"
    }, awful.key {
        description = "swap with previous client by index",
        key = "k",
        modifiers = modifier.mod_shift,
        on_press = swap_client_byidx(-1),
        group = "client"
    }, awful.key {
        description = "jump to urgent client",
        key = "u",
        modifiers = modifier.modkey,
        on_press = awful.client.urgent.jumpto,
        group = "client"
    }
}

client.connect_signal("request::default_keybindings", function()
    awful.keyboard.append_client_keybindings {
        awful.key {
            description = "toggle fullscreen",
            modifiers = modifier.modkey,
            key = "f",
            on_press = toggle_fullscreen,
            group = "client"
        }, awful.key {
            description = "close",
            key = "c",
            modifiers = modifier.mod_shift,
            on_press = close_client,
            group = "client"
        }, awful.key {
            description = "toggle floating",
            key = "space",
            modifiers = modifier.mod_ctrl,
            on_press = awful.client.floating.toggle,
            group = "client"
        }, awful.key {
            description = "move to master",
            key = "Return",
            modifiers = modifier.mod_ctrl,
            on_press = move_to_master,
            group = "client"
        }, awful.key {
            description = "move to screen",
            key = "o",
            modifiers = modifier.modkey,
            on_press = move_to_screen,
            group = "client"
        }, awful.key {
            description = "toggle keep on top",
            key = "t",
            modifiers = modifier.modkey,
            on_press = keep_on_top,
            group = "client"
        }, awful.key {
            description = "toggle titlebar",
            key = "t",
            modifiers = modifier.mod_shift,
            on_press = awful.titlebar.toggle,
            group = "client"
        }, awful.key {
            description = "minimize",
            key = "n",
            modifiers = modifier.modkey,
            on_press = minimize,
            group = "client"
        }, awful.key {
            description = "(un)maximize",
            key = "m",
            modifiers = modifier.modkey,
            on_press = toggle_maximize,
            group = "client"
        }, awful.key {
            description = "(un)maximize vertically",
            key = "m",
            modifiers = modifier.mod_ctrl,
            on_press = toggle_maximize_vertically,
            group = "client"
        }, awful.key {
            description = "(un)maximize horizontally",
            key = "m",
            modifiers = modifier.mod_shift,
            on_press = toggle_maximize_horizontally,
            group = "client"
        }
    }
end)
