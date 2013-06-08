Room = class('Room')

function Room:initialize(xpos, ypos, width, height)
	self.x = xpos + 0
	self.y = ypos + 0
	self.w = width + 0
	self.h = height + 0
end

function Room:getBounds()
	return self.x, self.y, self.w, self.h
end

function Room:draw()
	love.graphics.rectangle('line', self.x, self.y, self.w, self.h)
end

function Room:contains(entity)
	if entity:getX() >= self.x and 
	entity:getX() <= self.x + self.w and
	entity:getY() >= self.y and 
	entity:getY() <= self.y + self.h then
		return true
	else
		return false
	end
end