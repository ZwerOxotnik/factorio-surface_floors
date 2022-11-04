
---@class EmptyModule : module
local M = {}


--#region Global data
local floors
--#endregion


--#region Constants
local ABS = math.abs
local floor_count = settings.global["ZSF_floor_count"].value
local is_free_teleportation = settings.global["ZSF_allow_teleportation_anywhere"].value
--#endregion


---@param floor_number integer?
---@param position MapPosition
---@return LuaSurface?
local function get_floor(floor_number, position)
	local main_surface = global.main_floor or floors[1]
	local surface
	if floor_number then
		surface = floors[floor_number]
	else
		if not (main_surface and main_surface.valid) then
			return
		end
		surface = main_surface
	end

	if surface == nil then
		---@cast floor_number integer
		local settings = table.deepcopy(main_surface.map_gen_settings)
		settings.seed = math.random(4000000000)

		surface = game.create_surface("SF_floor_" .. tostring(floor_number), settings)
		surface.request_to_generate_chunks(position, 1)
		floors[floor_number] = surface
		-- surface.daytime = 0
		-- surface.always_day = false
	end
	if not surface.valid then
		return
	end
	return surface
end


--#region Functions of events


local MOD_SETTINGS = {
	["ZSF_floor_count"] = function(value)
		floor_count = value
	end,
	["ZSF_allow_teleportation_anywhere"] = function(value)
		is_free_teleportation = value
	end,
}
local function on_runtime_mod_setting_changed(event)
	if event.setting_type ~= "runtime-global" then return end

	local f = MOD_SETTINGS[event.setting]
	if f then f(settings.global[event.setting].value) end
end


local function on_pre_surface_deleted(event)
	local target_surface = game.get_surface(event.surface_index)
	for k, surface in pairs(floors) do
		if not surface.valid or target_surface == surface then
			floors[k] = nil
		end
	end
end


local function on_floor_command(cmd)
	local player = game.get_player(cmd.player_index)
	---@cast player LuaPlayer
	local position = player.position
	if not is_free_teleportation then
		if ABS(position.x) > 50 or ABS(position.y) > 50 then
			-- TODO: add localization
			player.print("You need to be close the center of the map to teleport")
			return
		end
	end
	local parameter = cmd.parameter
	local floor_number
	if parameter and parameter ~= '' then
		floor_number = tonumber(parameter)
		if floor_number == nil then
			-- TODO: add localization
			player.print("Invalid number")
			return
		end
		if floor_number < 0 then
			floor_number = ABS(floor_number)
		end
		if floor_number > floor_count then
			-- TODO: add localization
			player.print("There are only " .. floor_count .. " floors")
			return
		elseif floor_number == 0 then
			floor_number = 1
		end
	end

	local surface = get_floor(floor_number, position)
	if not surface then
		-- TODO: add localization
		player.print("Error, please, try again")
		return
	end
	player.teleport(position, surface)
end

local function set_main_floor_command(cmd)
	-- TODO: improve
	global.main_floor = game.get_player(cmd.player_index).surface
end

--#endregion


--#region Pre-game stage

local function link_data()
	floors = global.floors
end

local function update_global_data()
	global.floors = global.floors or {}

	link_data()

	local main_floor = global.main_floor
	if main_floor and not main_floor.valid then
		global.main_floor = nil
	end
	for k, surface in pairs(floors) do
		if not surface.valid then
			floors[k] = nil
		end
	end
end


local function on_init()
	update_global_data()
	if global.main_floor == nil then
		-- Is "next" safe here for MP?
		global.main_floor = game.get_surface("nauvis") or game.get_surface(1) or next(game.surfaces)
		table.insert(floors, global.main_floor)
	end
end

M.on_init = on_init
M.on_configuration_changed = update_global_data
M.on_load = link_data
M.update_global_data_on_disabling = update_global_data -- for safe disabling of this mod

--#endregion


M.events = {
	--[defines.events.on_game_created_from_scenario] = on_game_created_from_scenario,
	[defines.events.on_pre_surface_deleted] = on_pre_surface_deleted,
	[defines.events.on_runtime_mod_setting_changed] = on_runtime_mod_setting_changed
}

M.commands = {
	floor = on_floor_command,
	set_main_floor = set_main_floor_command
}


return M
