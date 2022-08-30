local awful = require("awful")
local modifier = require("configs.bindings.modifiers")

local function view_tag(idx)
    local screen = awful.screen.focused()
    local tag = screen.tags[idx]
    if tag then tag:view_only() end
end

local function toggle_tag(idx)
    local screen = awful.screen.focused()
    local tag = screen.tags[idx]
    if tag then awful.tag.viewtoggle(tag) end
end

local function move_focus_to_tag(idx)
    if client.focus then
        local tag = client.focus.screen.tags[idx]
        if tag then client.focus:move_to_tag(tag) end
    end
end

local function toggle_view_focus_on_tag(idx)
    if client.focus then
        local tag = client.focus.screen.tags[idx]
        if tag then client.focus:toggle_tag(tag) end
    end
end

awful.keyboard.append_global_keybindings({
    awful.key {
        description = "view previous",
        key = "Left",
        modifiers = modifier.modkey,
        on_press = awful.tag.viewprev,
        group = "tag"
    }, awful.key {
        description = "view next",
        key = "Right",
        modifiers = modifier.modkey,
        on_press = awful.tag.viewnext,
        group = "tag"
    }, awful.key {
        description = "go back",
        key = "Escape",
        modifiers = modifier.modkey,
        on_press = awful.tag.history.restore,
        group = "tag"
    }, awful.key {
        description = "only view tag",
        keygroup = "numrow",
        modifiers = modifier.modkey,
        on_press = view_tag,
        group = "tag"
    }, awful.key {
        description = "toggle tag",
        keygroup = "numrow",
        modifiers = modifier.mod_ctrl,
        on_press = toggle_tag,
        group = "tag"
    }, awful.key {
        description = "move focused client to tag",
        keygroup = "numrow",
        modifiers = modifier.mod_shift,
        on_press = move_focus_to_tag,
        group = "tag"
    }, awful.key {
        description = "toggle focused client on tag",
        keygroup = "numrow",
        modifiers = modifier.mod_shift_ctrl,
        on_press = toggle_view_focus_on_tag,
        group = "tag"
    }
})
