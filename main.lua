require 'libraries/libraries'
require 'classes/classes'

function love.load()
	--cam = Camera(0, 0)
	test_guy = Entity:new(400, 300)
	
	player = {}
	avatar = {}
	
	player[1] = Player:new()
	avatas[1] = Avatar:new(200,200, "Blenderer")
	
	player[1]:control(avatar[1])
end

function love.update(deltatime)
	
end


function love.draw()
	test_guy:draw()
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