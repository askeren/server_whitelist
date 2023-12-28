local allowed = {
    -- Put in your SteamID64 in here.
    [ "Your SteamID64" ] = true
}

hook.Add( "CheckPassword", "WhitelistChecker", function( steamID64 )
    if not allowed[ steamID64 ] then
        -- This is a SteamID64 Logger. This will print the User's SteamID64 who tried to join on the server in the server console
        print("[Whitelist] " .. steamID64 .. " tried to join on the server.")

        -- If u want u can set a custom message. For a new line use "\n"
        return false, "YOUR MESSAGE IF CONNECTION IS DENIED"
    end
end )
