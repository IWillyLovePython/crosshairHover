local mouse = game.Players.LocalPlayer:GetMouse()

--Crosshair Configuration
getgenv().CrosshairSettings = {
    Color = Color3.fromRGB(255,0,0),
    RainbowColor = false,
    Opacity = 1,
    Length = 5, -- Length of each line
    Thickness = 1, -- Thickness of each line
    Offset = 1.5, -- Offset from the middle point
    Dot = false, -- not recommended
    FollowCursor = true, -- Crosshair follows the cursor
    HideMouseIcon = true, -- Hides the mouse icon, set to 0 to ignore
    HideGameCrosshair = true, -- Hides the current game's crosshair (if its supported)
    ToggleKey = Enum.KeyCode.RightAlt, -- Toggles crosshair visibility
}

--Crosshair Script (v1.2.1) | By zzerexx#3970
loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/CustomCrosshair.lua", true))()

--Hover Detect Script
mouse.Move:connect(function()
    local X, Y = mouse.X, mouse.Y;
    if mouse.Target then
        if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) then
            getgenv().CrosshairSettings["Color"] = Color3.fromRGB(0,255,0) --Color when hovered on player
        else
            getgenv().CrosshairSettings["Color"] = Color3.fromRGB(255,0,0) --Color when not hovered on player
        end
    end
end)
