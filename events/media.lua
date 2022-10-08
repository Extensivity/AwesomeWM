local awful = require("awful")

local function playerctl(arg)
    cmd = "playerctl --player=chromium,spotify %s"
    awful.spawn(cmd:format(arg))
end

local function pactl(set, value)
    local cmd = "pactl set-sink-%s 0 %s"
    awful.spawn(cmd:format(set, value))
end

local media = {}
function media.play() playerctl("play-pause") end
function media.next() playerctl("next") end
function media.prev() playerctl("previous") end
function media.stop() playerctl("stop") end

local volume = {}
function volume.mute() pactl("mute", "toggle") end
function volume.increase() pactl("volume", "+5%") end
function volume.decrease() pactl("volume", "-3%") end

media.volume = volume
return media
