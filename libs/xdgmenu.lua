-- Created with `xdg_menu`
-- https://wiki.archlinux.org/title/Xdg-menu#Awesome
-- 
-- Modified so it doesn't make a global variable, instead it returns the menu.
-- Additional personal modifications were made too, aka customize to your liking

local menu98edb85b00d9527ad5acebe451b3fae6 = {
    { "Break Timer", "gnome-break-timer-settings" },
    { "Clocks", "gnome-clocks" },
    { "Runebook", "runebook", "/usr/share/icons/hicolor/256x256/apps/runebook.png" },
    { "Thunar File Manager", "thunar ", "/usr/share/icons/hicolor/16x16/apps/org.xfce.thunar.png" },
    { "kitty", "kitty", "/usr/share/icons/hicolor/256x256/apps/kitty.png" },
}

local menude7a22a0c94aa64ba2449e520aa20c99 = {
    { "Artikulate", "artikulate -qwindowtitle \"Artikulate\"", "/usr/share/icons/hicolor/16x16/apps/artikulate.png" },
    { "Blinken", "blinken", "/usr/share/icons/hicolor/16x16/apps/blinken.png" },
    { "Obsidian", "/usr/bin/obsidian ", "/usr/share/pixmaps/obsidian.png" },
    { "Recipes", "gnome-recipes ", "/usr/share/icons/hicolor/16x16/apps/org.gnome.Recipes.png" },
}

local menu251bd8143891238ecedc306508e29017 = {
    { "KMines", "kmines -qwindowtitle KMines", "/usr/share/icons/hicolor/16x16/apps/kmines.png" },
    { "League of Legends", "env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/1" },
    { "Runebook", "runebook", "/usr/share/icons/hicolor/256x256/apps/runebook.png" },
    { "PolyMC", "polymc" },
    { "Steam Games", {
        { "BioShock Remastered", "steam steam://rungameid/409710" },
        { "Bloons TD 6", "steam steam://rungameid/960090" },
        { "Crusader Kings III", "steam steam://rungameid/1158310" },
        { "Stardew Valley", "steam steam://rungameid/413150" },
        { "The Elder Scrolls V: Skyrim Special Edition", "steam steam://rungameid/489830" },
        { "Valheim", "steam steam://rungameid/892970" },
    } }
}

local menud334dfcea59127bedfcdbe0a3ee7f494 = {
    { "Flameshot", "/usr/bin/flameshot", "/usr/share/icons/hicolor/48x48/apps/org.flameshot.Flameshot.png" },
}

local menuc8205c7636e728d448c2774e6a4a944b = {
    { "Brave", "brave ", "/usr/share/icons/hicolor/16x16/apps/brave-desktop.png" },
    { "Discord", "/usr/bin/discord", "/usr/share/pixmaps/discord.png" },
    { "Steam", "/usr/bin/steam-runtime ", "/usr/share/icons/hicolor/16x16/apps/steam.png" },
    { "qBittorrent", "qbittorrent ", "/usr/share/icons/hicolor/16x16/apps/qbittorrent.png" },
}

local menudf814135652a5a308fea15bff37ea284 = {
    { "Freeplane", "freeplane ", "/usr/share/pixmaps/freeplane.svg" },
    { "LibreOffice Base", "libreoffice --base ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-base.png" },
    { "LibreOffice Calc", "libreoffice --calc ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-calc.png" },
    { "LibreOffice Draw", "libreoffice --draw ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-draw.png" },
    { "LibreOffice Impress", "libreoffice --impress ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-impress.png" },
    { "LibreOffice Math", "libreoffice --math ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-math.png" },
    { "LibreOffice Writer", "libreoffice --writer ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-writer.png" },
}

local menue6f43c40ab1c07cd29e4e83e4ef6bf85 = {
    { "Kapow Punch Clock", "kapow", "/usr/share/icons/hicolor/16x16/apps/kapow.png" },
    { "Leafpad", "leafpad ", "/usr/share/icons/hicolor/16x16/apps/leafpad.png" },
    { "Code - OSS", "/usr/bin/code-oss --unity-launch ", "/usr/share/pixmaps/com.visualstudio.code.oss.png" },
    { "Wireshark", "wireshark ", "/usr/share/icons/hicolor/16x16/apps/org.wireshark.Wireshark.png" },
}

local menu52dd1c847264a75f400961bfb4d1c849 = {
    { "Spotify", "spotify --uri=", "/usr/share/pixmaps/spotify-client.png" },
    { "PulseAudio Volume Control", "pavucontrol" },
    { "qpwgraph", "qpwgraph ", "/usr/share/icons/hicolor/32x32/apps/org.rncbc.qpwgraph.png" },
}

local menuee69799670a33f75d45c57d1d1cd0ab3 = {
    { "BleachBit", "bleachbit", "/usr/share/pixmaps/bleachbit.png" },
    { "ClamTk", "clamtk ", "/usr/share/pixmaps/clamtk.png" },
    { "Font Manager", "font-manager ", "/usr/share/icons/hicolor/128x128/apps/org.gnome.FontManager.png" },
    { "GSmartControl", "/usr/bin/gsmartcontrol_polkit", "/usr/share/icons/hicolor/16x16/apps/gsmartcontrol.png" },
    { "Icon Browser", "yad-icon-browser", "/usr/share/icons/hicolor/16x16/apps/yad.png" },
    { "KSystemLog", "xdg_menu_su ksystemlog -qwindowtitle KSystemLog" },
    { "Manage Printing", "/usr/bin/xdg-open http://localhost:631/", "/usr/share/icons/hicolor/16x16/apps/cups.png" },
    { "Polkit-explorer", "polkitex" },
    { "btop++", "xterm -e btop", "/usr/share/icons/hicolor/48x48/apps/btop.png" },
}

return {
    { "Accessories", menu98edb85b00d9527ad5acebe451b3fae6 },
    { "Education", menude7a22a0c94aa64ba2449e520aa20c99 },
    { "Games", menu251bd8143891238ecedc306508e29017 },
    { "Graphics", menud334dfcea59127bedfcdbe0a3ee7f494 },
    { "Internet", menuc8205c7636e728d448c2774e6a4a944b },
    { "Office", menudf814135652a5a308fea15bff37ea284 },
    { "Programming", menue6f43c40ab1c07cd29e4e83e4ef6bf85 },
    { "Sound & Video", menu52dd1c847264a75f400961bfb4d1c849 },
    { "System Tools", menuee69799670a33f75d45c57d1d1cd0ab3 },
}
