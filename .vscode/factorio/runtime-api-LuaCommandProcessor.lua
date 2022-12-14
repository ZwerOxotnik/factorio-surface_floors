---@meta
---@diagnostic disable

--$Factorio 1.1.70
--$Overlay 5
--$Section LuaCommandProcessor
-- This file is automatically generated. Edits will be overwritten.

---**Global Description:**  
---Allows registering custom commands for the in-game console accessible via the grave key.
---
---**Class Description:**  
---Allows for the registration of custom console commands. Similarly to [event subscriptions](https://lua-api.factorio.com/latest/LuaBootstrap.html#LuaBootstrap.on_event), these don't persist through a save-and-load cycle.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCommandProcessor.html)
---@class LuaCommandProcessor:LuaObject
---[R]  
---Lists the custom commands registered by scripts through `LuaCommandProcessor`.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCommandProcessor.html#LuaCommandProcessor.commands)
---@field commands {[string]: LocalisedString} 
---[R]  
---Lists the built-in commands of the core game. The [wiki](https://wiki.factorio.com/Console) has an overview of these.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCommandProcessor.html#LuaCommandProcessor.game_commands)
---@field game_commands {[string]: LocalisedString} 
---[R]  
---This object's name.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCommandProcessor.html#LuaCommandProcessor.object_name)
---@field object_name string 
commands={
---Add a custom console command.
---
---**Note:** Trying to add a command with the `name` of a game command or the name of a custom command that is already in use will result in an error.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCommandProcessor.html#LuaCommandProcessor.add_command)
---
---### Example  
---This will register a custom event called `print_tick` that prints the current tick to either the player issuing the command or to everyone on the server, depending on the command parameter. It shows the usage of the table that gets passed to any function handling a custom command. This specific example makes use of the `tick` and the optional `player_index` and `parameter` fields. The user is supposed to either call it without any parameter (`"/print_tick"`) or with the `"me"` parameter (`"/print_tick me"`). 
---```
---commands.add_command("print_tick", nil, function(command)
---  if command.player_index ~= nil and command.parameter == "me" then
---    game.get_player(command.player_index).print(command.tick)
---  else
---    game.print(command.tick)
---  end
---end)
---```
---@param name string@The desired name of the command (case sensitive).
---@param help LocalisedString@The localised help message. It will be shown to players using the `/help` command.
---@param function_ fun(param1:CustomCommandData)@The function that will be called when this command is invoked.
add_command=function(name,help,function_)end,
---Remove a custom console command.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCommandProcessor.html#LuaCommandProcessor.remove_command)
---@param name string@The name of the command to remove (case sensitive).
---@return boolean@Whether the command was successfully removed. Returns `false` if the command didn't exist.
remove_command=function(name)end,
}


