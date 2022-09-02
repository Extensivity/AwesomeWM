local gfs = require("gears.filesystem")
local beautiful = require("beautiful")
local menubar = require("menubar")
local apps = require("configs.apps")

if not beautiful.init(require("theme")) then
    beautiful.init(gfs.get_themes_dir() .. "default/theme.lua")
end

menubar.utils.terminal = apps.terminal

require("configs.autostart")
require("configs.layouts")
require("configs.taglist")
require("configs.bindings")
require("configs.rules")
