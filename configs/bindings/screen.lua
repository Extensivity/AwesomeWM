local awful = require("awful")
local modifier = require("configs.bindings.modifiers")

local function inc_focus(inc)
    return function()
        awful.screen.focus_relative(inc)
    end
end

awful.keyboard.append_global_keybindings({
    awful.key {
        description = "focus the next screen",
        key = "j",
        modifiers = modifier.mod_ctrl,
        on_press = inc_focus(1),
        group = "screen"
    },
    awful.key {
        description = "focus the previous screen",
        key = "k",
        modifiers = modifier.mod_ctrl,
        on_press = inc_focus(-1),
        group = "screen"
    },
    
})