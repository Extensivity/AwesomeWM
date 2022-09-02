-- https://wiki.archlinux.org/title/awesome#Autostart
local awful = require("awful")

awful.spawn.with_shell([[
    if (xrdb -get awesome.started | grep -q true); then exit; fi;
    xrdb -merge <<< "awesome.started:true";
    lxpolkit &
    dex --environment Awesome --autostart --search-paths "$XDG_CONFIG_DIRS/autostart:$XDG_CONFIG_HOME/autostart"
]])
