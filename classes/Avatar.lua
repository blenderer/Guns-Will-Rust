Avatar = class('Avatar', Entity)

function Avatar:initialize(xpos, ypos, name, controller)
	Entity.initialize(self, xpos, ypos, name)
	self.controller = controller
	self.hp = 50
end