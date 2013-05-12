Entity = class('Entity')

function Entity:initialize(xpos, ypos)
	self.x = xpos
	self.y = ypos
	self.hp = 1
end

function Entity:getX()
	return self.x
end

function Entity:getX()
	return self.x
end

function Entity:getHp()
	return self.hp
end

function Entity:kill()
	self.hp = 0
end

function Entity:move(xpos, ypos)
	self.x = xpos
	self.y = ypos
end

function Entity:draw()
	love.graphics.circle("fill", 300, 300, 50)
end