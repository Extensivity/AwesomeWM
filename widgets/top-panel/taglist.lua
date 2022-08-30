local awful = require("awful")
local modifier = require("configs.bindings.modifiers")

local function view_tag(t)
    t:view_only(t)
end

local function view_next_tag(t)
    awful.tag.viewnext(t.screen)
end

local function view_prev_tag(t)
    awful.tag.viewprev(t.screen)
end

local function move_client_to_tag(t)
    if client.focus then
        client.focus:move_to_tag(t)
    end
end

local function toggle_client_on_tag(t)
    if client.focus then
        client.focus:toggle_tag(t)
    end
end

return function(s)
    return awful.widget.taglist {
        screen = s,
        filter = awful.widget.taglist.filter.all,
        buttons = {
            awful.button({}, 1, view_tag),
            awful.button(modifier.modkey, 1, move_client_to_tag),
            awful.button({}, 3, awful.tag.viewtoggle),
            awful.button(modifier.modkey, 3, toggle_client_on_tag),
            awful.button({}, 4, view_prev_tag),
            awful.button({}, 5, view_next_tag)
        }
    }
end