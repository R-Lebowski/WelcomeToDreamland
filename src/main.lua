--[[
	Welcome To Dreamland
	Version: Alpha_0.05.07
	"Waggish Washington"
	Author: Raymond Lebowski
	Start Date: 11/20/2014
	Latest Update: 11/21/2014
--]]

require('items')
require('player')
local gui = require('gui')


function love.load()
	font = love.graphics.newFont(10)
	love.graphics.setFont(font)

	guiState = 1
end

--Monitors key releases
function love.keyreleased(key)
	--error checking player levelUp
	if(key == 'f1') then
		levelUp()
	end
	--error checking player xp gain
	if(key == 'x') then
		player.curXP = player.curXP + 1
	end
end

function love.update(dt)
	--Simple Player Movements
	--Boundries need to be fixed
	if love.keyboard.isDown("left") then
		if (player.x >= 14) then
			player.x = player.x - player.speed*dt
		end
	elseif love.keyboard.isDown("right") then
		if (player.x <= 350) then
			player.x = player.x + player.speed*dt
		end
	elseif love.keyboard.isDown("up") then
		if (player.y >= 54) then
			player.y = player.y - player.speed*dt
		end
	elseif love.keyboard.isDown("down") then
		if (player.y <= 290) then
			player.y = player.y + player.speed*dt
		end
	end

	--check for level up
	if threasholdCheck() then
		levelUp()
		guiState = 2
	end
end

function love.draw()
	--Header version information
	love.graphics.setColor(255, 255, 255)
	love.graphics.printf("Welcome to Dreamland"..
				" - Version: alpha_0.05.07", 10, 10, 250)
	love.graphics.print("\"Waggish Washington\"", 10, 25)

	--Room borders
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("line", 10, 50, 350, 250)
	
	--Player statistics information
	drawGUI(guiState)

	--Player graphics
	love.graphics.setColor(0, 0, 255)
	love.graphics.rectangle("fill", player.x, player.y,
		player.width, player.height)
end