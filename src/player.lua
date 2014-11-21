--[[
	Welcome To Dreamland::Player Header
	Version: Alpha_0.00.12
	Start Date: 11/20/2014
	Last Update: 11/20/2014

	Hold and Manipulates player stats and information
--]]

--Player object
player = {
			name = "Default",
			x = 100,	--start positions
			y = 100,
			width = 10,	--graphic sizes
			height = 10,
			speed = 250, --movement speed
			level = 1,
			health = 50,
			attack = 10,
			defense = 10,
			magic = 0,
			strength = 10
		  }

--Generic level up function for all player stats
function levelUp()
	player.level = player.level + 1
	player.health = player.health * player.level - 20
	player.attack = player.attack + 15
	player.defense = player.defense * player.level - 20
	player.magic = player.magic * player.level
	player.strength = player.strength * player.level - 10
end

--Checks player defense against enemy attack
--If player.defense > enemy.attack, player defends attack
function defenseCheck(enemy_attack)
	playerDefense = love.math.random(
			player.defense/2, player.defense)
	enemyAttack = love.math.random(
			1, enemy_attack)
	if (playerDefense > enemyAttack) then
		return true
	else 
		return false
	end
end