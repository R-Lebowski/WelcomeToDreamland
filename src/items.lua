--[[
	Welcome To Dreamland::Item Repository
	Version Alpha_0.00.01
	Author: Raymond Lebowski
	Start Date: 11/20/2014
	Last Update: 11/20/2014

	Contains all items and weapons used in WtD
--]]

--[[
	WEAPONS
--]]
bat = {name = "bat", strenghtMod = 5, maxUses = 50}
stick = {name = "stick", strenghtMod = 2, maxUses = 25}
rock = {name = "rock", strenghtMod = 2, maxUses = 999}
woodenSword = {name = "Wooden Sword", strenghtMod = 2,
				maxUses = 50}
--[[
	DEFENSIVE ITMES
--]]

--[[
	POTIONS
--]]

--Item Level Requirements
lvlOneWeapons = {bat, stick, rock}
lvlOneWeaponsSize = 3
lvlTwoWeapons = {woodenSword}
lvlTwoWeaponsSize = 1

--Get a random weapon from a certain level
function getRandWeapon(level)
	if (level == 1) then
		--Generate random int within size of the array
		number = love.math.random(1, lvlOneWeaponsSize)
		return lvlOneWeapons[number]
	elseif (level == 2) then
		return lvlTwoWeapons[1]
	end
end