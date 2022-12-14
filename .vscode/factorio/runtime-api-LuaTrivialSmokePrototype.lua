---@meta
---@diagnostic disable

--$Factorio 1.1.70
--$Overlay 5
--$Section LuaTrivialSmokePrototype
-- This file is automatically generated. Edits will be overwritten.

---Prototype of a trivial smoke.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html)
---@class LuaTrivialSmokePrototype:LuaObject
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.affected_by_wind)
---@field affected_by_wind boolean 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.color)
---@field color Color 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.cyclic)
---@field cyclic boolean 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.duration)
---@field duration uint 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.end_scale)
---@field end_scale double 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.fade_away_duration)
---@field fade_away_duration uint 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.fade_in_duration)
---@field fade_in_duration uint 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.glow_animation)
---@field glow_animation boolean 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.glow_fade_away_duration)
---@field glow_fade_away_duration uint 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.localised_description)
---@field localised_description LocalisedString 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.localised_name)
---@field localised_name LocalisedString 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.movement_slow_down_factor)
---@field movement_slow_down_factor double 
---[R]  
---Name of this prototype.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.name)
---@field name string 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.object_name)
---@field object_name string 
---[R]  
---The string used to alphabetically sort these prototypes. It is a simple string that has no additional semantic meaning.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.order)
---@field order string 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.render_layer)
---@field render_layer RenderLayer 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.show_when_smoke_off)
---@field show_when_smoke_off boolean 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.spread_duration)
---@field spread_duration uint 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.start_scale)
---@field start_scale double 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.valid)
---@field valid boolean 
local LuaTrivialSmokePrototype={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTrivialSmokePrototype.html#LuaTrivialSmokePrototype.help)
---@return string
help=function()end,
}


