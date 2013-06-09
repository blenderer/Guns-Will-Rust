Avatar = class('Avatar', Entity)

function Avatar:initialize(name, xpos, ypos, controller)
	Entity.initialize(self, name, xpos, ypos)
	self.controller = controller
	self.hp = 50

	self.height, self.width = 20, 20
	self.bounds = BoundingBox:new(self, 40, 40, -20, -20)

	self.speed = 1
end

function Avatar:draw()
	self.bounds:draw()

	f = love.graphics.getFont()

	name_size = f:getWidth(self.name)

	love.graphics.setColor(34, 149, 34)
	love.graphics.circle("fill", self.x, self.y, self.height)
	love.graphics.setColor(255, 255, 255)
	love.graphics.print(self.name, self.x - name_size / 2, self.y + self.height)
end