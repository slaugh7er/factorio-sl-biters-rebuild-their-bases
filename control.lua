do end

-- settings.global["sl-brtb-spawntime-min"].value

local RebuildRequests = {} -- [uid] = { position=position, ticktorebuild=tick }

script.on_nth_tick( 60, function()
	for k, t in pairs( RebuildRequests ) do
		local pos = t.position
		local tick = t.tick
		if tick <= game.tick then 
			RebuildRequests[k] = nil
			local m = settings.startup["sl-brtb-spawnamount-min"].value
			local M = settings.startup["sl-brtb-spawnamount-max"].value
			game.surfaces[1].build_enemy_base( pos, math.random(m,M) ) 
		end
	end
end )

local ValidSpawnerNames = {
	["biter-spawner"] = true,
	["spitter-spawner"] = true,
}
script.on_event( defines.events.on_entity_died, function(t)
	local entity = t.entity 
	local enemy = game.forces.enemy
	local type, name = entity.type, entity.name
	if type ~= "unit-spawner" then return end
	if not ValidSpawnerNames[name] then return end
	local m = settings.startup["sl-brtb-spawntime-min"].value
	local M = settings.startup["sl-brtb-spawntime-max"].value
	RebuildRequests[ math.random(1111111,9999999) ] = {
		force = entity.force,
		position = entity.position,
		tick = game.tick + math.random(m,M)*60,
	}
end )



