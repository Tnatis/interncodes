--O código a seguir é um código OFICIAL TNATIS STUDIOS
--Tnatis Studios presents
--Teleport.lua

local teleportPart = script.Parent
local placeId = 123456789 -- Aqui você coloca o ID da place q vc vai colocar no objeto

local function onPartTouched(hit)
    local character = hit.Parent
    local player = game.Players:GetPlayerFromCharacter(character)
    if player then
        -- Teleportar o jogador para outra "place"
        game:GetService("TeleportService"):Teleport(placeId, player)
    end
end

teleportPart.Touched:Connect(onPartTouched)
