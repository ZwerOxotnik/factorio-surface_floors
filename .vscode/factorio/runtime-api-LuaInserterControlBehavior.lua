---@meta
---@diagnostic disable

--$Factorio 1.1.70
--$Overlay 5
--$Section LuaInserterControlBehavior
-- This file is automatically generated. Edits will be overwritten.

---Control behavior for inserters.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaInserterControlBehavior.html)
---@class LuaInserterControlBehavior:LuaGenericOnOffControlBehavior
---[RW]  
---The hand read mode for the inserter.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaInserterControlBehavior.html#LuaInserterControlBehavior.circuit_hand_read_mode)
---@field circuit_hand_read_mode defines.control_behavior.inserter.hand_read_mode 
---[RW]  
---The circuit mode of operations for the inserter.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaInserterControlBehavior.html#LuaInserterControlBehavior.circuit_mode_of_operation)
---@field circuit_mode_of_operation defines.control_behavior.inserter.circuit_mode_of_operation 
---[RW]  
---`true` if the contents of the inserter hand should be sent to the circuit network
---
---[View documentation](https://lua-api.factorio.com/latest/LuaInserterControlBehavior.html#LuaInserterControlBehavior.circuit_read_hand_contents)
---@field circuit_read_hand_contents boolean 
---[RW]  
---If the stack size of the inserter is set through the circuit network or not.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaInserterControlBehavior.html#LuaInserterControlBehavior.circuit_set_stack_size)
---@field circuit_set_stack_size boolean 
---[RW]  
---The signal used to set the stack size of the inserter.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaInserterControlBehavior.html#LuaInserterControlBehavior.circuit_stack_control_signal)
---@field circuit_stack_control_signal SignalID 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaInserterControlBehavior.html#LuaInserterControlBehavior.object_name)
---@field object_name string 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaInserterControlBehavior.html#LuaInserterControlBehavior.valid)
---@field valid boolean 
local LuaInserterControlBehavior={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaInserterControlBehavior.html#LuaInserterControlBehavior.help)
---@return string
help=function()end,
}


