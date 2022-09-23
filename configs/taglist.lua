local awful = require("awful")
local layouts = awful.layout.suit


local primary_screen = {
    tag_names = { " 1 ", " 2 ", " 3 ", " 4 ", " 5 " },
    layout = layouts.floating
}

local secondary_screen = {
    tag_names = { " Brave ", " Discord ", " Spotify ", " Steam ", " Gaming " },
    layout = layouts.tile
}

local tv_screen = {
    tag_names = { " What are we watching? " },
    layout = layouts.max.fullscreen
}

local taglist = {}

taglist[1] = primary_screen
taglist[2] = secondary_screen
taglist[3] = tv_screen

taglist.primary = primary_screen
taglist.secondary = secondary_screen
taglist.tv = tv_screen

return taglist
