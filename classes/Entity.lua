Entity = class('Entity')

function Entity:initialize(xpos, ypos, name)
	
	self.x = xpos
	self.y = ypos
	self.hp = 1
	
	self.name = name
	
end

function Entity:getName()
	return self.name
end

function Entity:getX()
	return self.x
end

function Entity:getY()
	return self.y
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
	love.graphics.circle("fill", self.x, self.y, 20)
end