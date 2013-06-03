Map = class('Map')

function Map:initialize(datafile)
	self.datafile = "maps/" .. datafile .. ".map"
	self.entities = {}

	self:readMap()
end

function Map:spawn(entity)
	table.insert(self.entities, entity)
end

function Map:draw()
	--draw terrain/rooms
	
	--draw entities
	for i,entity in ipairs(self.entities) do
		entity:draw()
	end
end

function Map:readMap()

	--each line is a an object of a class, it can handle a lot of parameters for "deep" classes
	--[[
		Entity:Ghost1,500,500;
		Entity:Ghost2,300,50;
		Entity:Ghost3,100,400;
	]]--
	for line in love.filesystem.lines(self.datafile) do

		--get the class name, this isn't a parameters "Entity"
		class_name = string.match(line, '[%a%d_]+')

		--match each parameters and insert it into an array
		params = {}
		for parameter in string.gmatch(line, '([%a%d_]+)[,;]') do 
			table.insert(params, parameter) 
		end

		--this line is crazy. spawn an entity by making a new class object by the class_name we grabbed
		--and unpack the array of params and insert into its constructor
  		self:spawn(_G[class_name]:new(unpack(params)))
	end
end