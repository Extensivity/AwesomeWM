local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
local modifier = require("configs.bindings.modifiers")
local mymainmenu = require("widgets.menu")

local function show_mainmenu()
    mymainmenu:show()
end

local function run_prompt()
    awful.prompt.run {
        prompt = "Run Lua code: ",
        textbox = awful.screen.focused().mypromptbox.widget,
        exe_callback = awful.util.eval,
        history_path = awful.util.get_cache_dir() .. "/history_eval"
    }
end

-- General Awesome keys
awful.keyboard.append_global_keybindings({
    awful.key {
        description = "show help",
        key = "s",
        modifiers = modifier.modkey,
        on_press = hotkeys_popup.show_help,
        group = "awesome"
    },
    awful.key {
        description = "show main menu",
        key = "w",
        modifiers = modifier.modkey,
        on_press = show_mainmenu,
        group = "awesome"
    },
    awful.key {
        description = "reload awesome",
        key = "r",
        modifiers = modifier.mod_ctrl,
        on_press = awesome.restart,
        group = "awesome",
    },
    awful.key {
        description = "quit awesome",
        key = "q",
        modifiers = modifier.mod_shift,
        on_press = awesome.quit,
        group = "awesome"
    },
    awful.key {
        description = "lua execute prompt",
        key = "x",
        modifiers = modifier.modkey,
        on_press = run_prompt,
        group = "awesome"
    },
})