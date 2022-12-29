local Accessories = {
    { "AutoKey", "autokey-gtk -c" },
    { "Thunar File Manager", "thunar ", "/usr/share/icons/hicolor/16x16/apps/org.xfce.thunar.png" },
    { "Break Timer", "gnome-break-timer-settings" },
    { "Clocks", "gnome-clocks" },
    { "Redshift", "redshift-gtk" },
    { "Picom", "picom" },
    { "KDE Connect", "kdeconnect-app" },
    { "Obsidian", "/usr/bin/obsidian ", "/usr/share/pixmaps/obsidian.png" },
    { "Freeplane", "freeplane ", "/usr/share/pixmaps/freeplane.svg" },
    { "Leafpad", "leafpad ", "/usr/share/icons/hicolor/16x16/apps/leafpad.png" },
}

local Education = {
    { "Artikulate", "artikulate -qwindowtitle \"Artikulate\"", "/usr/share/icons/hicolor/16x16/apps/artikulate.png" },
    { "Blinken", "blinken", "/usr/share/icons/hicolor/16x16/apps/blinken.png" },
    { "Recipes", "gnome-recipes ", "/usr/share/icons/hicolor/16x16/apps/org.gnome.Recipes.png" },
}

local Games = {
    { "Applications", {
        { "Steam", "/usr/bin/steam-runtime ", "/usr/share/icons/hicolor/16x16/apps/steam.png" },
        { "Lutris", "lutris" },
        { "Minecraft", "prismlauncher" },
        { "r2modman", "env DESKTOPINTEGRATION=false /usr/bin/r2modman --no-sandbox",
            "/usr/share/icons/hicolor/16x16/apps/r2modman.png" },
        { "Stardrop", "/home/ian/Applications/Stardrop-x86_64_d9e4d2eda163566bfbd6a5bd4908d06a.AppImage" },
    } },

    { "Steam Games", {
        { "Alien Swarm: Reactive Drop", "steam steam://rungameid/563560" },
        { "BioShock Remastered", "steam steam://rungameid/409710" },
        { "Bloons TD 6", "steam steam://rungameid/960090" },
        { "Crusader Kings III", "steam steam://rungameid/1158310" },
        { "Cult of the Lamb", "steam steam://rungameid/1313140" },
        { "Gunfire Reborn", "steam steam://rungameid/1217060" },
        { "New World", "steam steam://rungameid/1063730" },
        { "Outward", "steam steam://rungameid/794260" },
        { "Persona 5 Royal", "steam steam://rungameid/1687950" },
        { "Stardew Valley", "steam steam://rungameid/413150" },
        { "The Elder Scrolls III: Morrowind", "steam steam://rungameid/22320" },
        { "The Elder Scrolls IV: Oblivion ", "steam steam://rungameid/22330" },
        { "The Elder Scrolls V: Skyrim Special Edition", "steam steam://rungameid/489830" },
        { "Valheim", "steam steam://rungameid/892970" },
    } },

    { "World of Warcraft", {
        { "World of Warcraft", "env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/3" },
        { "Ascension WoW", "env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/2" },
        { "Trade Skill Master", "env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/4" },
        { "WowUp", "/home/ian/Applications/wowup-cf_266d7cfb59cb88d8089efda017befb48.AppImage --no-sandbox " },
    } },

    { "Leauge of Legends", {
        { "League of Legends", "env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/1" },
        { "Runebook", "runebook", "/usr/share/icons/hicolor/256x256/apps/runebook.png" },
    } },

    { "Minecraft", {
        { "Vault Hunters", "prismlauncher -l 'Vault Hunters 3rd Edition" },
    } },

    { "KMines", "kmines -qwindowtitle KMines", "/usr/share/icons/hicolor/16x16/apps/kmines.png" },
}

local Graphics = {
    { "Flameshot", "/usr/bin/flameshot", "/usr/share/icons/hicolor/48x48/apps/org.flameshot.Flameshot.png" },
}

local Internet = {
    { "Brave", "brave ", "/usr/share/icons/hicolor/16x16/apps/brave-desktop.png" },
    { "Discord", "/usr/bin/discord", "/usr/share/pixmaps/discord.png" },
    { "Trello", "trello", "/usr/share/pixmaps/trello.png" },
    { "qBittorrent", "qbittorrent ", "/usr/share/icons/hicolor/16x16/apps/qbittorrent.png" },
    { "Evolution", "evolution " },
}

local Office = {
    { "LibreOffice Base", "libreoffice --base ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-base.png" },
    { "LibreOffice Calc", "libreoffice --calc ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-calc.png" },
    { "LibreOffice Draw", "libreoffice --draw ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-draw.png" },
    { "LibreOffice Impress", "libreoffice --impress ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-impress.png" },
    { "LibreOffice Math", "libreoffice --math ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-math.png" },
    { "LibreOffice Writer", "libreoffice --writer ", "/usr/share/icons/hicolor/16x16/apps/libreoffice-writer.png" },
}

local Programming = {
    { "Kapow Punch Clock", "kapow", "/usr/share/icons/hicolor/16x16/apps/kapow.png" },
    { "Code - OSS", "/usr/bin/code-oss --unity-launch ", "/usr/share/pixmaps/com.visualstudio.code.oss.png" },
    { "JetBrains Fleet", "jetbrains-fleet ", "/usr/share/pixmaps/jetbrains-fleet.png" },
    { "Wireshark", "wireshark ", "/usr/share/icons/hicolor/16x16/apps/org.wireshark.Wireshark.png" },
    { "Color Profile Viewer", "gcm-viewer", "/usr/share/icons/hicolor/16x16/apps/gnome-color-manager.png" },
    { "Oracle VM VirtualBox", "VirtualBox ", "/usr/share/icons/hicolor/16x16/mimetypes/virtualbox.png" },
    { "Font Manager", "font-manager ", "/usr/share/icons/hicolor/128x128/apps/org.gnome.FontManager.png" },
    { "Neovim", "xterm -e nvim ", "/usr/share/icons/hicolor/128x128/apps/nvim.png" },
}

local Sound_n_Video = {
    { "Spotify", "spotify --uri=", "/usr/share/pixmaps/spotify-client.png" },
    { "VLC media player", "/usr/bin/vlc --started-from-file ", "/usr/share/icons/hicolor/16x16/apps/vlc.png" },
    { "PulseAudio Volume Control", "pavucontrol" },
    { "qpwgraph", "qpwgraph ", "/usr/share/icons/hicolor/32x32/apps/org.rncbc.qpwgraph.png" },
}

local System_Tools = {
    { "BleachBit", "bleachbit", "/usr/share/pixmaps/bleachbit.png" },
    { "Disk Usage Analyzer", "baobab " },
    { "GSmartControl", "/usr/bin/gsmartcontrol_polkit", "/usr/share/icons/hicolor/16x16/apps/gsmartcontrol.png" },
    { "KSystemLog", "ksystemlog -qwindowtitle KSystemLog" },
    { "Manage Printing", "/usr/bin/xdg-open http://localhost:631/", "/usr/share/icons/hicolor/16x16/apps/cups.png" },
    { "kitty", "kitty", "/usr/share/icons/hicolor/256x256/apps/kitty.png" },
    { "Vim", "xterm -e vim ", "/usr/share/icons/hicolor/48x48/apps/gvim.png" },
    { "ClamTk", "clamtk ", "/usr/share/pixmaps/clamtk.png" },
}

return {
    { "Accessories", Accessories },
    { "Education", Education },
    { "Games", Games },
    { "Graphics", Graphics },
    { "Internet", Internet },
    { "Office", Office },
    { "Programming", Programming },
    { "Sound & Video", Sound_n_Video },
    { "System Tools", System_Tools },
}
