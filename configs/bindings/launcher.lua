local awful = require("awful")
local menubar = require("menubar")
local modifier = require("configs.bindings.modifiers")
local apps = require("configs.apps")

local function spawn_terminal() awful.spawn(apps.terminal) end

local function run_prompt() awful.screen.focused().mypromptbox:run() end

local function show_menubar() menubar.show() end

awful.keyboard.append_global_keybindings {
    awful.key {
        description = "open a terminal",
        key = "Return",
        modifiers = modifier.modkey,
        on_press = spawn_terminal,
        group = "launcher"
    }, awful.key {
        description = "run prompt",
        key = "r",
        modifiers = modifier.modkey,
        on_press = run_prompt,
        group = "launcher"
    }, awful.key {
        description = "show the menubar",
        key = "p",
        modifiers = modifier.modkey,
        on_press = show_menubar,
        group = "launcher"
    }
}
