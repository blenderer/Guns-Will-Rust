Avatar = class('Avatar', Entity)

function Avatar:initialize(xpos, ypos, name)
	Entity:initialize()
	self.x = xpos
	self.y = ypos
	self.hp = 50
end