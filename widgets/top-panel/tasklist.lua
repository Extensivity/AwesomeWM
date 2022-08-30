local awful = require("awful")

local function activate_client(c)
    c:activate {
        context = "tasklist",
        action = "toggle_minimization"
    }
end

local function show_client_list()
    awful.menu.client_list {
        theme = { width = 250 }
    }
end

local function focus_client_by_idx(idx)
    return function()
        awful.client.focus.byidx(idx)
    end
end

return function(s)
    return awful.widget.tasklist {
        screen = s,
        filter = awful.widget.tasklist.filter.currenttags,
        buttons = {
            awful.button({}, 1, activate_client),
            awful.button({}, 3, show_client_list),
            awful.button({}, 4, focus_client_by_idx(-1)),
            awful.button({}, 5, focus_client_by_idx(1))
        }
    }
end