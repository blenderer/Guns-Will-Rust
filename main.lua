require 'libraries/libraries'
require 'classes/classes'

function love.load()

	--cam = Camera(0, 0)

	test_map = Map:new("Test")
	
	enemy1 = Entity:new("Bad Guy")
	
	players = {}
	
	table.insert(players, Avatar:new("Blenderer", 1))
	
	test_map:spawn(enemy1, 200, 200)
	
	test_map:spawn(players[1], 400, 300)
	
end

function love.update(deltatime)

	if love.joystick.getHat( 1, 1 ) ~= "c" then
		print(love.joystick.getHat( 1, 1 ))
	end
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

end