Room = class('Room')

function Room:initialize(xpos, ypos, width, height)
	self.x = xpos
	self.y = ypos
	self.w = width
	self.h = height
end

function Room:draw()
	love.graphics.rectangle('line', self.x, self.y, self.w, self.h)
end