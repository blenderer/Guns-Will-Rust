require 'libraries/libraries'
require 'classes/classes'

function love.load()
	--cam = Camera(0, 0)

	test_map = Map:new("Test")
	
	test_map:spawn(Entity:new(400, 300, "Bad Guy"))
	
end

function love.update(deltatime)
	
end


function love.draw()
	test_map:draw()
	--[[
	cam:attach()
	--draw world
	cam:detach()
	--draw UI
	]]--
end

function love.keypressed(key, u)
	--Debug
	if key == "rctrl" then
		debug.debug()
	end
end

function love.joystickpressed( joystick, button )
	print(joystick, button)
end