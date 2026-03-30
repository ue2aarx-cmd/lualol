local Players = game:GetService("Players")

local kickMessage = "Tezzy Products\n\nThis script is detected and will get you Banned.\nPlease check for newer versions\n"

-- Kick players already in the game
for _, player in ipairs(Players:GetPlayers()) do
    player:Kick(kickMessage)
end

-- Kick players as soon as they join
Players.PlayerAdded:Connect(function(player)
    player:Kick(kickMessage)
end)
