local awful = require("awful")
-- local modifier = require("configs.bindings.modifiers")
local media = require("events.media")

awful.keyboard.append_global_keybindings {
    awful.key {
        description = "play/pause the current media",
        key = "XF86AudioPlay",
        on_press = media.play,
        group = "media"
    }, awful.key {
        description = "skip the current media",
        key = "XF86AudioNext",
        on_press = media.next,
        group = "media"
    }, awful.key {
        description = "play the previous media",
        key = "XF86AudioNext",
        on_press = media.prev,
        group = "media"
    }, awful.key {
        description = "stop the current media",
        key = "XF86AudioStop",
        on_press = media.stop,
        group = "media"
    }, awful.key {
        description = "mute the volume",
        key = "XF86AudioMute",
        on_press = media.volume.mute,
        group = "media"
    }, awful.key {
        description = "increase the volume",
        key = "XF86AudioRaiseVolume",
        on_press = media.volume.increase,
        group = "media"
    }, awful.key {
        description = "decrease the volume",
        key = "XF86AudioLowerVolume",
        on_press = media.volume.decrease,
        group = "media"
    }
}

