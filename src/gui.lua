require('player')

function drawGUI(state)
	if (state == 1) then
		--outputs player stats to GUI area
		love.graphics.setColor(255, 255, 255)
		love.graphics.printf("Health - " .. player.health,
					10, 310, 250)
		love.graphics.printf("Attack - " .. player.attack,
					10, 325, 250)
		love.graphics.printf("Defense - " .. player.defense,
					10, 340, 250)
		love.graphics.printf("Strength - " .. player.strength,
					10, 355, 250)
	end
end