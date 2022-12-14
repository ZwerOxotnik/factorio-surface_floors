---@meta
---@diagnostic disable

--$Factorio 1.1.70
--$Overlay 5
--$Section LuaRailPath
-- This file is automatically generated. Edits will be overwritten.

---A rail path.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailPath.html)
---@class LuaRailPath:LuaObject
---[R]  
---The current rail index.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailPath.html#LuaRailPath.current)
---@field current uint 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailPath.html#LuaRailPath.object_name)
---@field object_name string 
---[R]  
---Array of the rails that this path travels over.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailPath.html#LuaRailPath.rails)
---@field rails LuaCustomTable<uint,LuaEntity> 
---[R]  
---The total number of rails in this path.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailPath.html#LuaRailPath.size)
---@field size uint 
---[R]  
---The total path distance.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailPath.html#LuaRailPath.total_distance)
---@field total_distance double 
---[R]  
---The total distance travelled.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailPath.html#LuaRailPath.travelled_distance)
---@field travelled_distance double 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailPath.html#LuaRailPath.valid)
---@field valid boolean 
local LuaRailPath={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailPath.html#LuaRailPath.help)
---@return string
help=function()end,
}


