BoundingBox = class('BoundingBox')

function BoundingBox:initialize(parent, width, height, offX, offY)
	self.w = width
	self.h = height

	self.ox = offX
	self.oy = offY

	self.parent = parent

	self:update()
end

function BoundingBox:update()
	self.x = self.parent:getX()
	self.y = self.parent:getY()
end

function BoundingBox:draw()
	love.graphics.rectangle('line', self.x + self.ox or self.x, self.y + self.oy or self.y, self.w, self.h)
end