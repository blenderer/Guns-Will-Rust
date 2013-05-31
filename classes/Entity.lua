Entity = class('Entity')

function Entity:initialize(name)
	self.hp = 1
	
	self.name = name

	self.x = 0

	self.y = 0
	
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
	--If xpos is a number, move to xy position
	if tonumber(xpos) then
		self.x = xpos
		self.y = ypos
	--if xpos is not nil, then it's a string, now we can move relatively
	elseif (xpos ~= nil) then
		direction = xpos --change the variable name so code looks sexier

		--Relative Moves
		if (direction == "up") then
			self:move(self.x, self.y - 1)
		elseif (direction == "down") then
			self:move(self.x, self.y + 1)
		elseif (direction == "left") then
			self:move(self.x - 1, self.y)
		elseif (direction == "right") then
			self:move(self.x + 1, self.y)
		end
	end
end


function Entity:draw()
	love.graphics.setColor(255, 0, 0)
	love.graphics.circle("fill", self.x, self.y, 10)
	love.graphics.setColor(255, 255, 255)
	love.graphics.print(self.name, self.x - 30, self.y - 5)
end