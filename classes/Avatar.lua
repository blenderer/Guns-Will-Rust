Avatar = class('Avatar', Entity)

function Avatar:initialize(name, xpos, ypos, controller)
	Entity.initialize(self, name, xpos, ypos)
	self.controller = controller
	self.hp = 50
end

function Avatar:draw()
	love.graphics.setColor(34, 149, 34)
	love.graphics.circle("fill", self.x, self.y, 20)
	love.graphics.setColor(255, 255, 255)
	love.graphics.print(self.name, self.x - 30, self.y - 5)
end