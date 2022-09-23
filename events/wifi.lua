local awful = require("awful")
local gears = require("gears")
local naughty = require("naughty")

local wifi = {
    status = {},
    signal_strength = nil,
    daemon = nil,
    command = {
        status = "iwctl station %s show",
        signal = "awk 'NR==3 {print ($3/70)*100}' /proc/net/wireless"
    }
}

local function fetch_signal()
    local signal_cmd = wifi.command.signal
    awful.spawn.easy_async_with_shell(signal_cmd, function (stdout)
        if stdout == "" then return end
        wifi.signal_strength = tonumber(stdout)
        awesome.emit_signal("wifi::signal", wifi.signal_strength)
    end)
end

local function fetch_status(interface)
    return function ()
        local status_cmd = wifi.command.status:format(interface)
        awful.spawn.easy_async_with_shell(status_cmd, function (stdout)
            local line_number = 0
            for line in stdout:gmatch("[^\r\n]+") do
                line_number = line_number + 1
                if line_number < 6 then goto continue end

                line = line:gsub("^%s*(.-)%s*$", "%1")
                local key, value = line:match("^(.*)%s%s+(.*)$")
                wifi.status[key:lower():gsub("^%s*(.-)%s*$", "%1")] = value

                ::continue::
            end

            if wifi.status.state == "connected" then
                fetch_signal()
            elseif wifi.status.state == "disconnected" then
                wifi.signal_strength = -1
                wifi.status = { state = "disconnected" }
                awesome.emit_signal("wifi::signal", wifi.signal_strength)
            end
        end)
    end
end

function wifi:start(interface, timeout)
    if self.daemon then
        if self.daemon.started then return end
    end

    self.daemon = gears.timer {
        timeout = timeout,
        call_now = true,
        autostart = true,
        callback = fetch_status(interface)
    }
end

function wifi:stop()
    if ~self.daemon then return end
    if self.daemon.started then
        self.daemon:stop()
    end
end

return wifi
