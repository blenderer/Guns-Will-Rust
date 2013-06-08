Entity = class('Entity')

function Entity:initialize(name, xpos, ypos)
	self.hp = 1
	
	self.name = name

	self.x = xpos + 0 or 0

	self.y = ypos + 0 or 0

	self.height, self.width = 10, 10

	self.bounds = BoundingBox:new(self, 20, 20, -10, -10)
	
end

function Entity:getName()
	return self.name
end

function Entity:getRoom(rooms)
	for i,room in ipairs(rooms) do
		x, y, w, h = room:getBounds()
		if self.x > x and self.y > y and self.x < x + w and self.y < y + h then
			
		end
	end
end

function Entity:getX()
	return self.x
end

function Entity:getY()
	return self.y
end

function Entity:getXY()
	return {self.x, self.y, x = self.x, y = self.y}
end

function Entity:getHp()
	return self.hp
end

function Entity:kill()
	self.hp = 0
end

function Entity:setHp(to_what)
	self.hp = to_what
end

function Entity:update()
	self.bounds:update()
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
			self:move(self.x, self.y - .6)
		elseif (direction == "down") then
			self:move(self.x, self.y + .6)
		elseif (direction == "left") then
			self:move(self.x - .6, self.y)
		elseif (direction == "right") then
			self:move(self.x + .6, self.y)
		end
	end
end


function Entity:draw()
	self.bounds:draw()

	love.graphics.setColor(255, 0, 0)
	love.graphics.circle("fill", self.x, self.y, self.height)
	love.graphics.setColor(255, 255, 255)

	f = love.graphics.getFont()

	name_size = f:getWidth(self.name)

	love.graphics.print(self.name, self.x - name_size / 2, self.y + self.height)
end