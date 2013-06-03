require 'libraries/libraries'
require 'classes/classes'

function love.load()
	font = love.graphics.newFont(13)
	love.graphics.setFont(font)

	cam = Camera(0, 0)

	test_map = Map:new("test")

	
	players = {}
	
	table.insert(players, Avatar:new("Blenderer", 0, 0, 1))
	
	test_map:spawn(players[1])
	
end

function love.update(deltatime)

	if love.joystick.getHat( 1, 1 ) ~= "c" then
		--print(love.joystick.getHat( 1, 1 ))
	end

	keydowns()
end


function love.draw()
	
	
	cam:attach()
	--draw world
	test_map:draw()

	cam:detach()
	--draw UI
	love.graphics.print(love.mouse.getX() .. ', ' .. love.mouse.getY(), 0, 580)
	
end

function love.keypressed(key, u)
	--Debug
	if (key == "rctrl") then
		debug.debug()
	end
end

function keydowns()
	if (love.keyboard.isDown("w")) then
		players[1]:move("up")
	end
	if (love.keyboard.isDown("s")) then
		players[1]:move("down")
	end
	if (love.keyboard.isDown("a")) then
		players[1]:move("left")
	end
	if (love.keyboard.isDown("d")) then
		players[1]:move("right")
	end
end

function love.joystickpressed( joystick, button )

end