Map = class('Map')

function Map:initialize(datafile)
	self.datafile = "maps/" .. datafile .. ".map"
	self.entities = {}
	self.rooms = {}


	self:readMap()
end

function Map:update()
	for i,entity in ipairs(self.entities) do
		entity:update()
	end
end

function Map:spawn(add)
	table.insert(self.entities, add)
end

function Map:scaffold(add)
	table.insert(self.rooms, add)
end

function Map:draw()
	--draw terrain/rooms
	for i,room in ipairs(self.rooms) do
		room:draw()
	end
	
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
		for parameter in string.gmatch(line, '([%a%d_+-]+)[,;]') do 
			table.insert(params, parameter) 
		end

		--spawn an entity by making a new class object by the class_name we grabbed
		--and unpack the array of params and insert into its constructor

		if _G[class_name].name == "Entity" or subclassOf(_G[class_name], Entity) then
  			self:spawn(_G[class_name]:new(unpack(params)))
  		elseif _G[class_name].name == "Room" or subclassOf(_G[class_name], Room) then
  			self:scaffold(_G[class_name]:new(unpack(params)))
  		end
	end
end