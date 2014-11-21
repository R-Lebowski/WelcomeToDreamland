--[[
	Welcome To Dreamland
	Version: Alpha_0.00.01
	"Waggish Washington"
	Author: Raymond Lebowski
	Start Date: 11/20/2014
	Latest Update: 11/20/2014
--]]

require('items')
require('player')


function love.load()
	font = love.graphics.newFont(10)
	love.graphics.setFont(font)
end

function love.update(dt)
	--Simple Player Movements
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
		if (player.y <= 250) then
			player.y = player.y + player.speed*dt
		end
	end
end

function love.draw()
	--Header version information
	love.graphics.setColor(255, 255, 255)
	love.graphics.printf("Welcome to Dreamland"..
				" - Version: alpha_0.00.01", 10, 10, 250)
	love.graphics.print("\"Waggish Washington\"", 10, 25)

	--Room borders
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("line", 10, 50, 350, 250)

	--Player statistics information
	love.graphics.setColor(255, 255, 255)
	love.graphics.printf("Health - " .. player.health,
				10, 310, 250)
	love.graphics.printf("Attack - " .. player.attack,
				10, 325, 250)
	love.graphics.printf("Defense - " .. player.defense,
				10, 340, 250)
	love.graphics.printf("Strength - " .. player.strength,
				10, 355, 250)
	
	--Player graphics
	love.graphics.setColor(0, 0, 255)
	love.graphics.rectangle("fill", player.x, player.y,
		player.width, player.height)
end