---@meta
---@diagnostic disable

--$Factorio 1.1.70
--$Overlay 5
--$Section LuaGenericOnOffControlBehavior
-- This file is automatically generated. Edits will be overwritten.

---An abstract base class for behaviors that support switching the entity on or off based on some condition.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaGenericOnOffControlBehavior.html)
---@class LuaGenericOnOffControlBehavior:LuaControlBehavior
---[RW]  
---The circuit condition. Writing `nil` clears the circuit condition.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaGenericOnOffControlBehavior.html#LuaGenericOnOffControlBehavior.circuit_condition)
---
---### Example  
---Tell an entity to be active (e.g. a lamp to be lit) when it receives a circuit signal of more than 4 chain signals. 
---```
---a_behavior.circuit_condition = {condition={comparator=">",
---                                           first_signal={type="item", name="rail-chain-signal"},
---                                           constant=4}}
---```
---@field circuit_condition CircuitConditionDefinition 
---[RW]  
---`true` if this should connect to the logistic network.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaGenericOnOffControlBehavior.html#LuaGenericOnOffControlBehavior.connect_to_logistic_network)
---@field connect_to_logistic_network boolean 
---[R]  
---If the entity is currently disabled because of the control behavior.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaGenericOnOffControlBehavior.html#LuaGenericOnOffControlBehavior.disabled)
---@field disabled boolean 
---[RW]  
---The logistic condition. Writing `nil` clears the logistic condition.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaGenericOnOffControlBehavior.html#LuaGenericOnOffControlBehavior.logistic_condition)
---
---### Example  
---Tell an entity to be active (e.g. a lamp to be lit) when the logistics network it's connected to has more than four chain signals. 
---```
---a_behavior.logistic_condition = {condition={comparator=">",
---                                            first_signal={type="item", name="rail-chain-signal"},
---                                            constant=4}}
---```
---@field logistic_condition CircuitConditionDefinition 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaGenericOnOffControlBehavior.html#LuaGenericOnOffControlBehavior.object_name)
---@field object_name string 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaGenericOnOffControlBehavior.html#LuaGenericOnOffControlBehavior.valid)
---@field valid boolean 
local LuaGenericOnOffControlBehavior={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaGenericOnOffControlBehavior.html#LuaGenericOnOffControlBehavior.help)
---@return string
help=function()end,
}


