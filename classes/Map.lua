Map = class('Map')

function Map:initialize(datafile)
	self.datafile = datafile
	self.entities = {}
end

function Map:spawn(entity, x, y)
	table.insert(self.entities, entity)
	entity:move(x, y)
end

function Map:draw()
	--draw terrain/rooms
	
	--draw entities
	for i,entity in ipairs(self.entities) do
		entity:draw()
	end
end