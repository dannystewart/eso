
local MapTools = {}
Harvest:RegisterModule("mapTools", MapTools)

local CallbackManager = Harvest.callbackManager
local Events = Harvest.events

function MapTools:Initialize()
	self.mapBlacklistPatterns = {
		["^tamriel/"] = true,
		["^battlegrounds/"] = true,
		["^housing/"] = true,
	}
	self.mapMetaData = {}
end

function MapTools:GetMap()
	local textureName = GetMapTileTexture()
	if self.lastMapTexture ~= textureName then
		self.lastMapTexture = textureName
		textureName = self:GetMapFromTexture(textureName)
		self.lastMap = textureName
	end
	return self.lastMap
end

function MapTools:GetMapFromTexture(textureName)
	textureName = string.lower(textureName)
	textureName = string.gsub(textureName, "^.*maps/", "")
	textureName = string.gsub(textureName, "_%d+%.dds$", "")

	if textureName == "eyevea_base" then
		textureName = "eyevea/" .. textureName
	end
	
	return textureName
end

function MapTools:IsMapBlacklisted(map)
	for pattern in pairs(self.mapBlacklistPatterns) do
		if map:match(pattern) then
			return true
		end
	end
	return false
end

function MapTools:SetMapToPlayerLocation()
	self:Debug("SetMapToPlayerLocation") 
	--[[
	There is a bug that can happen when you traverse city/zone borders.
	Reproduction:
	Login in city. View map and zoom out to zone. Close map. Leave city.
	Next SetMapToPlayerLocation will move the map to city instead of the zone.
	This function is to fix that issue...
	]]
	SetMapToPlayerLocation()
	local localX, localY, heading = GetMapPlayerPosition("player")
	local playerZoneIndex = GetUnitZoneIndex("player")
	local mapZoneIndex = GetCurrentMapZoneIndex()
	
	-- if we can click on the player location, then we are probably erroneously viewing a zone map
	-- (exception is hew's bane where we can click outside of abahs landing and it will open abahs landing)
	if WouldProcessMapClick(localX, localY) and playerZoneIndex == mapZoneIndex then
		-- second if condition is required for houses in cities. setmaptoplayer location is a zone map but clicking yields city map
		self:Warn("Had to perform a map click: %s, %f, %f", GetMapTileTexture(), localX, localY )
		ProcessMapClick(localX, localY)
		localX, localY, heading = GetMapPlayerPosition("player")
	end
	
	if localX < 0 or localX > 1 or localY < 0 or localY > 1 then
		self:Warn("Player coordinates out of bound: %s, %f, %f", GetMapTileTexture(), localX, localY )
		-- the player is not visible on the current map,
		-- then we should use the parent map
		if MapZoomOut() == SET_MAP_RESULT_MAP_CHANGED then
			-- if the currently viewed map zone index is identical to neither
			-- the original map zone index or the player's zone index, then
			-- it probably has nothing to do with the player location
			-- so just use SetMapToPlayerLocation() instead
			local newMapZoneIndex = GetCurrentMapZoneIndex()
			if newMapZoneIndex ~= mapZoneIndex or newMapZoneIndex ~= playerZoneIndex then
				self:Warn("Reset player location. mapZoneIndices: %d, %d, playerZoneIndex: %d.",
						newMapZoneIndex, mapZoneIndex, playerZoneIndex )
				SetMapToPlayerLocation()
			end
		end
	end
end

function MapTools:GetPlayerMapMetaData()
	local originalMap = GetMapTileTexture()
	self:SetMapToPlayerLocation()
	self:Debug("get player map position. old map: ", originalMap)
	self:Debug("new map: ", GetMapTileTexture())
	
	local mapMetaData = self:GetViewedMapMetaData()
	
	if GetUnitZoneIndex("player") ~= mapMetaData.zoneIndex then
		self:Error("Player map meta data zone id does not match: %s, %d, %d", mapMetaData.map, GetZoneId(GetUnitZoneIndex("player")), mapMetaData.zoneId)
		--LuaError(string.format("Player map meta data zone id does not match: %s, %d, %d", mapMetaData.map, GetZoneId(GetUnitZoneIndex("player")), mapMetaData.zoneId))
		local forcePlayerZoneId = true
		mapMetaData = self:GetViewedMapMetaData(forcePlayerZoneId)
	end
	
	if GetMapTileTexture() ~= originalMap then
		self:Debug("fire 'OnWorldMapChanged' callback")
		CALLBACK_MANAGER:FireCallbacks("OnWorldMapChanged")
	end
	
	return mapMetaData
end

function MapTools:GetViewedMapMetaData(forcePlayerZone)
	local map = self:GetMap()
	local zoneIndex = GetCurrentMapZoneIndex()
	if forcePlayerZone or DoesCurrentMapMatchMapForPlayerLocation() then
		zoneIndex = GetUnitZoneIndex("player")
	end
	self:Debug("viewed map position: map %s zoneIndex %d", map, zoneIndex)
	local mapMetaData = self:GetMapMetaDataForZoneIndexAndMap(zoneIndex, map)
	
	return mapMetaData
end

function MapTools:GetMapMetaDataForZoneIndexAndMap(zoneIndex, map)
	self:Debug("get map meta data for zone index %d and map %s", zoneIndex, map)
	self.mapMetaData[zoneIndex] = self.mapMetaData[zoneIndex] or {}
	local mapMetaData = self.mapMetaData[zoneIndex][map]
	if not mapMetaData then
		local zoneId = GetZoneId(zoneIndex)
		self:Info("create new map meta data for zone index %d, id %d and map %s", zoneIndex, zoneId, map)
		mapMetaData = {map = map, zoneIndex = zoneIndex, zoneId = zoneId, isBlacklisted = self:IsMapBlacklisted(map)}
		self.mapMetaData[zoneIndex][map] = mapMetaData
	end
	return mapMetaData
end
