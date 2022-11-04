-- See https://wiki.factorio.com/Tutorial:Mod_settings#Reading_settings

require("defines")
require("models/BetterCommands/control"):create_settings() -- Adds switchable commands


-- https://wiki.factorio.com/Tutorial:Mod_settings#Creation
data:extend({
	{
		type = "int-setting", name = "ZSF_floor_count", setting_type = "runtime-global", --"startup", -- or runtime-global or runtime-per-user
		minimum_value = 1, maximum_value = 100, default_value = 10
	},
	{
		type = "bool-setting", name = "ZSF_allow_teleportation_anywhere", setting_type = "runtime-global",
		default_value = false
	}
})
