local awful = require("awful")
local modifier = require("configs.bindings.modifiers")

local function master_width_factor(inc)
    return function()
        awful.tag.incmwfact(inc)
    end
end

local function inc_master_count(inc)
    return function()
        awful.tag.incnmaster(1, nil, true)
    end
end

local function inc_column_count(inc)
    return function()
        awful.tag.incncol(inc, nil, true)
    end
end

local function inc_layout(inc)
    return function()
        awful.layout.inc(inc)
    end
end

local function select_layout(idx)
    local t = awful.screen.focused().selected_tag
    if t then
        t.layout = t.layouts[idx] or t.layout
    end
end

awful.keyboard.append_global_keybindings({
    awful.key {
        description = "increase master width factor",
        key = "l",
        modifiers = modifier.modkey,
        on_press = master_width_factor(0.05),
        group = "layout"
    },
    awful.key {
        description = "decrease master width factor",
        key = "h",
        modifiers = modifier.modkey,
        on_press = master_width_factor(-0.05),
        group = "layout"
    },
    awful.key {
        description = "increase the number of master clients",
        key = "h",
        modifiers = modifier.mod_shift,
        on_press = inc_master_count(1),
        group = "layout"
    },
    awful.key {
        description = "decrease the number of master clients",
        key = "l",
        modifiers = modifier.mod_shift,
        on_press = inc_master_count(-1),
        group = "layout"
    },
    awful.key {
        description = "increase the number of columns",
        key = "h",
        modifiers = modifier.mod_ctrl,
        on_press = inc_column_count(1),
        group = "layout"
    },
    awful.key {
        description = "decrease the number of columns",
        key = "l",
        modifiers = modifier.mod_ctrl,
        on_press = inc_column_count(-1),
        group = "layout"
    },
    awful.key {
        description = "select next",
        key = "space",
        modifiers = modifier.modkey,
        on_press = inc_layout(1),
        group = "layout"
    },
    awful.key {
        description = "select previous",
        key = "space",
        modifiers = modifier.mod_shift,
        on_press = inc_layout(-1),
        group = "layout"
    },
    awful.key {
        description = "select layout directly",
        keygroup = "numpad",
        modifiers = modifier.modkey,
        on_press = select_layout,
        group = "layout"
    }
})