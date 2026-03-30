local Players = game:GetService("Players")

local kickMessage = "Unsupported Executor\n"

-- Kick players already in the game
for _, player in ipairs(Players:GetPlayers()) do
    player:Kick(kickMessage)
end

-- Kick players as soon as they join
Players.PlayerAdded:Connect(function(player)
    player:Kick(kickMessage)
end)
