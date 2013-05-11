require 'libraries/libraries'
require 'classes/classes'

function love.load()
	cam = Camera(0, 0)
end

function love.update(deltatime)
	
end


function love.draw()
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