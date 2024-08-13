--DO NOT COPY THIS CODE IF YOU AREN'T MEMBER OF TNATIS STUDIOS.
--NÃO COPIE SE VOCÊ NÃO É MEMBRO DA TNATIS STUDIOS.


local Players = game:GetService("Players")

function resetMap()
	-- Reiniciar todos os jogadores
	print("Reiniciando o mapa...")
	for _, player in pairs(Players:GetPlayers()) do
		if player.Character then
			-- Remove o personagem atual para forçar um respawn
			player:LoadCharacter()
		end
	end
end

function checkPlayers()
	local alivePlayers = 0
	local lastAlivePlayer = nil
	for _, player in pairs(Players:GetPlayers()) do
		if player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then
			alivePlayers = alivePlayers + 1
			lastAlivePlayer = player
		end
	end
	-- Verifica se há mais de um jogador na partida antes de reiniciar
	if alivePlayers == 1 and #Players:GetPlayers() > 1 then
		wait(2)  -- Pequena espera para permitir que o último jogador veja que ganhou
		resetMap()
	end
end

while true do
	wait(1)
	checkPlayers()
end
