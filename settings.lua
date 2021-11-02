data:extend({
	-- STARTUP
	-- spawntime
	{
		type = "int-setting",
		name = "sl-brtb-spawntime-min",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 60,
		order = "a-a",
	},
	{
		type = "int-setting",
		name = "sl-brtb-spawntime-max",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 90,
		order = "a-b",
	},
	-- spawn mult
	{
		type = "int-setting",
		name = "sl-brtb-spawnamount-min",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 2,
		order = "b-a",
	},
	{
		type = "int-setting",
		name = "sl-brtb-spawnamount-max",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 4,
		order = "b-b",
	},
	
	-- STARTUP END
})