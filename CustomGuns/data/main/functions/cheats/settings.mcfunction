tellraw @s [{"text": "CustomGuns Settings Menu", "color": "gold", "bold": true},{"text": "\n","bold": false}]



## enabled setings
execute if score .recoil Settings matches 1 run tellraw @s [{"text": "Recoil: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to have recoil"}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/scoreboard players set .recoil Settings 0"}}]

execute if score .infiniteAmmo Settings matches 1 run tellraw @s [{"text": "Infinite Ammo: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to shoot infinite bullets"}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/scoreboard players set .infiniteAmmo Settings 0"}}]

execute if score .breakableBlocks Settings matches 1 run tellraw @s [{"text": "Block breaking: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to break certain blocks"}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/scoreboard players set .breakableBlocks Settings 0"}}]

execute if score .scoping Settings matches 1 run tellraw @s [{"text": "Allow Scoping/ADS: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow players to ADS with sneak"}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/scoreboard players set .scoping Settings 0"}}]

execute if score .gunSounds Settings matches 1 run tellraw @s [{"text": "Shooting Sound: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to have a shooting sound"}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/scoreboard players set .gunSounds Settings 0"}}]



## disabled settings
execute if score .recoil Settings matches 0 run tellraw @s [{"text": "Recoil: ", "color": "aqua"},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/scoreboard players set .recoil Settings 1"}}]

execute if score .infiniteAmmo Settings matches 0 run tellraw @s [{"text": "Infinite Ammo: ", "color": "aqua"},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/scoreboard players set .infiniteAmmo Settings 1"}}]

execute if score .breakableBlocks Settings matches 0 run tellraw @s [{"text": "Block breaking: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to break certain blocks"}},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/scoreboard players set .breakableBlocks Settings 1"}}]

execute if score .scoping Settings matches 0 run tellraw @s [{"text": "Allow Scoping/ADS: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow players to ADS with sneak"}},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/scoreboard players set .scoping Settings 1"}}]

execute if score .gunSounds Settings matches 0 run tellraw @s [{"text": "Shooting Sound: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to have a shooting sound"}},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/scoreboard players set .gunSounds Settings 1"}}]



tellraw @s [{"text": "\n"},{"text": "Click on Enabled/Disabled to change it!", "color": "dark_aqua"}]
tellraw @s {"text": "Open this menu again with /trigger Settings.Change", "color": "gold"}