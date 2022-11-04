---@meta
---@diagnostic disable

--$Factorio 1.1.70
--$Overlay 5
--$Section LuaEquipment
-- This file is automatically generated. Edits will be overwritten.

---An item in a [LuaEquipmentGrid](https://lua-api.factorio.com/latest/LuaEquipmentGrid.html), for example a fusion reactor placed in one's power armor.
---
---An equipment reference becomes invalid once the equipment is removed or the equipment grid it resides in is destroyed.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html)
---@class LuaEquipment:LuaObject
---[R]  
---The burner energy source for this equipment, if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.burner)
---@field burner? LuaBurner 
---[RW]  
---Current available energy.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.energy)
---@field energy double 
---[R]  
---Energy generated per tick.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.generator_power)
---@field generator_power double 
---[R]  
---Maximum amount of energy that can be stored in this equipment.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.max_energy)
---@field max_energy double 
---[R]  
---Maximum shield value.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.max_shield)
---@field max_shield double 
---[R]  
---Maximum solar power generated.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.max_solar_power)
---@field max_solar_power double 
---[R]  
---Movement speed bonus.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.movement_bonus)
---@field movement_bonus double 
---[R]  
---Name of this equipment.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.name)
---@field name string 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.object_name)
---@field object_name string 
---[R]  
---Position of this equipment in the equipment grid.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.position)
---@field position EquipmentPosition 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.prototype)
---@field prototype LuaEquipmentPrototype 
---[R]  
---Shape of this equipment.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.shape)
---@field shape LuaEquipment.shape 
---[RW]  
---Current shield value of the equipment.
---
---**Note:** Can't be set higher than [LuaEquipment::max_shield](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.max_shield).
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.shield)
---@field shield double 
---[R]  
---Type of this equipment.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.type)
---@field type string 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.valid)
---@field valid boolean 
local LuaEquipment={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.help)
---@return string
help=function()end,
}


