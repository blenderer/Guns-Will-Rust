require 'libraries/libraries'
require 'classes/classes'

function love.load()
	
end

function love.update(deltatime)
	
end


function love.draw()
	love.graphics.print( "hello world", 0, 0)
end

function love.keypressed(key, u)
	--Debug
	if key == "rctrl" then
		debug.debug()
	end
end