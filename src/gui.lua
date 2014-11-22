--[[
	Welcome to Dreamland::GUI class
	Version: alpha_0.01.03
	Start Date: 11/20/2014
	Last Update: 11/21/2014
	Author: Raymond Lebowski
--]]
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
		love.graphics.printf("XP - " .. player.curXP .. "/" ..
			xpThreasholds[player.level], 10, 370, 250)
	elseif (state == 2) then --LEVEL UP STATE
		drawGUI(1)
		love.graphics.setColor(255, 255, 255)
		love.graphics.printf("Player has leveled up to " .. 
		player.level, 100, 310, 250)
	end
end
