local awful = require("awful")
local beautiful = require("beautiful")
local hotkeys_popup = require("awful.hotkeys_popup")
local apps = require("configs.apps")

local terminal_cmd = apps.terminal .. " -e "
local editor_cmd = terminal_cmd .. apps.editor .. " "

local function show_hotkeys()
    hotkeys_popup.show_help(nil, awful.screen.focused())
end

local awesomemenu = {
    {"hotkeys", show_hotkeys}, {"manual", terminal_cmd .. "man awesome"},
    {"edit config", editor_cmd .. awesome.conffile},
    {"restart", awesome.restart}, {"quit", awesome.quit}
}

return awful.menu({
    items = {
        {"awesome", awesomemenu, beautiful.awesome_icon},
        {"open terminal", apps.terminal}
    }
})
