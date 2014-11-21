--[[
	Welcome To Dreamland::Configuration File
	Author: Raymond Lebowski
	Date: 11/20/2014
--]]
function love.conf(t)
	t.version = "0.9.1"
	t.console = false

	t.window.title = "Welcome to Dreamland"
	t.window.icon = nil
	t.window.width = 400
	t.window.height = 400
	t.window.borderless = false
	t.window.resizeable = false
	t.window.fullscreen = false
	t.window.vsync = true
	t.window.display = 1

	t.modules.audio = true
    t.modules.event = true
    t.modules.graphics = true
    t.modules.image = true
    t.modules.joystick = false
    t.modules.keyboard = true
    t.modules.math = true
    t.modules.physics = true
    t.modules.sound = true  
    t.modules.system = true 
    t.modules.timer = true 
    t.modules.window = true 
    t.modules.thread = true 
end