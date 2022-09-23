-- Created with `xdg_menu`
-- https://wiki.archlinux.org/title/Xdg-menu#Awesome
--
-- Modified so it doesn't make a global variable, instead it returns the menu.
-- Additional personal modifications were made too, aka customize to your liking
local gfs = require("gears.filesystem")
local home_icons = gfs.get_xdg_data_home() .. "icons/"

local accessories = {
    { "Break Timer", "gnome-break-timer-settings", "/usr/share/icons/hicolor/scalable/apps/org.gnome.clocks.svg" },
    { "Clocks", "gnome-clocks", "/usr/share/icons/hicolor/scalable/apps/org.gnome.clocks.svg" },
    { "Thunar File Manager", "thunar ", "/usr/share/icons/hicolor/16x16/apps/org.xfce.thunar.png" },
    { "kitty", "kitty", "/usr/share/icons/hicolor/256x256/apps/kitty.png" },
}

local education = {
    { "Artikulate", "artikulate -qwindowtitle \"Artikulate\"", "/usr/share/icons/hicolor/16x16/apps/artikulate.png" },
    { "Blinken", "blinken", "/usr/share/icons/hicolor/16x16/apps/blinken.png" },
    { "Obsidian", "/usr/bin/obsidian ", "/usr/share/pixmaps/obsidian.png" },
    { "Recipes", "gnome-recipes ", "/usr/share/icons/hicolor/16x16/apps/org.gnome.Recipes.png" },
}

local games = {
    { "KMines", "kmines -qwindowtitle KMines", "/usr/share/icons/hicolor/16x16/apps/kmines.png" },
    { "PolyMC", "polymc", "/usr/share/icons/hicolor/scalable/apps/org.polymc.PolyMC.svg" },
    { "Ascension", "env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/2", home_icons .. "hicolor/256x256/apps/lutris_ascension-wow.png" },
    { "Riot Games", {
        { "League of Legends", "env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/1", home_icons .. "hicolor/128x128/apps/lutris_league-of-legends.png" },
        { "Runebook", "runebook", "/usr/share/icons/hicolor/256x256/apps/runebook.png" },
    }, home_icons .. "hicolor/16x16/apps/riot.png" },
    { "Steam Games", {
        -- { "Steam Game Name", "steam steam://rungameid/APP_ID", home_icons .. "hicolor/32x32/apps/steam_icon_APP_ID.png" },
        { "BioShock Remastered", "steam steam://rungameid/409710", home_icons .. "hicolor/32x32/apps/steam_icon_409710.png" },
        { "Bloons TD 6", "steam steam://rungameid/960090", home_icons .. "hicolor/32x32/apps/steam_icon_960090.png" },
        { "Crusader Kings III", "steam steam://rungameid/1158310", home_icons .. "hicolor/32x32/apps/steam_icon_1158310.png" },
        { "Golf With Your Friends", "steam steam://rungameid/431240", home_icons .. "hicolor/32x32/apps/steam_icon_431240.png" },
        { "Gunfire Reborn", "steam steam://rungameid/1217060", home_icons .. "hicolor/32x32/apps/steam_icon_1217060.png" },
        { "New World", "steam steam://rungameid/1063730", home_icons .. "hicolor/32x32/apps/steam_icon_1063730.png" },
        { "Skyrim SE", "steam steam://rungameid/489830", home_icons .. "hicolor/32x32/apps/steam_icon_489830.png" },
        { "Stardew Valley", "steam steam://rungameid/413150", home_icons .. "hicolor/32x32/apps/steam_icon_413150.png" },
        { "Valheim", "steam steam://rungameid/892970", home_icons .. "hicolor/32x32/apps/steam_icon_892970.png" },
    }, "/usr/share/icons/hicolor/16x16/apps/steam.png" },
}

local graphics = {
    { "Flameshot", "/usr/bin/flameshot", "/usr/share/icons/hicolor/48x48/apps/org.flameshot.Flameshot.png" },
}

local internet = {
    { "Brave", "brave ", "/usr/share/icons/hicolor/16x16/apps/brave-desktop.png" },
    { "Discord", "/usr/bin/discord", "/usr/share/pixmaps/discord.png" },
    { "Evolution", "evolution", "/usr/share/icons/hicolor/16x16/apps/evolution-mail.png" },
    { "Steam", "/usr/bin/steam-runtime ", "/usr/share/icons/hicolor/16x16/apps/steam.png" },
    { "qBittorrent", "qbittorrent ", "/usr/share/icons/hicolor/16x16/apps/qbittorrent.png" },
    { "Webull", "/usr/local/WebullDesktop/WebullDesktop", "/usr/share/icons/hicolor/64x64/apps/WebullDesktop.png" },
}

local office = {
    { "Freeplane", "freeplane ", "/usr/share/pixmaps/freeplane.svg" },
    { "LibreOffice Base", "libreoffice --base ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-base.png" },
    { "LibreOffice Calc", "libreoffice --calc ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-calc.png" },
    { "LibreOffice Draw", "libreoffice --draw ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-draw.png" },
    { "LibreOffice Impress", "libreoffice --impress ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-impress.png" },
    { "LibreOffice Math", "libreoffice --math ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-math.png" },
    { "LibreOffice Writer", "libreoffice --writer ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-writer.png" },
}

local programming = {
    { "Kapow Punch Clock", "kapow", "/usr/share/icons/hicolor/16x16/apps/kapow.png" },
    { "Leafpad", "leafpad ", "/usr/share/icons/hicolor/16x16/apps/leafpad.png" },
    { "Code - OSS", "/usr/bin/code-oss --unity-launch ", "/usr/share/pixmaps/com.visualstudio.code.oss.png" },
    { "Wireshark", "wireshark ", "/usr/share/icons/hicolor/16x16/apps/org.wireshark.Wireshark.png" },
}

local sound_video = {
    { "Spotify", "spotify --uri=", "/usr/share/pixmaps/spotify-client.png" },
    { "VLC", "/usr/bin/vlc --started-from-file %U", "/usr/share/icons/hicolor/16x16/vlc.png" },
    { "PulseAudio Volume Control", "pavucontrol", "/org/gtk/libgtk/icons/16x16/status/audio-volume-high.png" },
    { "qpwgraph", "qpwgraph ", "/usr/share/icons/hicolor/32x32/apps/org.rncbc.qpwgraph.png" },
}

local system = {
    { "BleachBit", "bleachbit", "/usr/share/pixmaps/bleachbit.png" },
    { "ClamTk", "clamtk", "/usr/share/pixmaps/clamtk.png" },
    { "Ezame", "ezame", "/usr/share/icons/hicolor/16x16/apps/ezame.png" },
    { "Font Manager", "font-manager ", "/usr/share/icons/hicolor/128x128/apps/org.gnome.FontManager.png" },
    { "GSmartControl", "/usr/bin/gsmartcontrol_polkit", "/usr/share/icons/hicolor/16x16/apps/gsmartcontrol.png" },
    { "Icon Browser", "yad-icon-browser", "/usr/share/icons/hicolor/16x16/apps/yad.png" },
    { "KSystemLog", "xdg_menu_su ksystemlog -qwindowtitle KSystemLog", "/usr/share/icons/Adwaita/16x16/status/image-missing.png" },
    { "Manage Printing", "/usr/bin/xdg-open http://localhost:631/", "/usr/share/icons/hicolor/16x16/apps/cups.png" },
    { "Polkit-explorer", "polkitex", "/usr/share/icons/hicolor/16x16/apps/gcr-key.png" },
    { "btop++", "xterm -e btop", "/usr/share/icons/hicolor/48x48/apps/btop.png" },
}

return {
    { "Accessories", accessories },
    { "Education", education },
    { "Games", games },
    { "Graphics", graphics },
    { "Internet", internet },
    { "Office", office },
    { "Programming", programming },
    { "Sound & Video", sound_video },
    { "System Tools", system },
}
