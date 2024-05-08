scoreboard players reset @s Settings
scoreboard players enable @s Settings

# --------------------------------------------------------------------------------- #

tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\nCustomGuns Settings Menu", "color": "gold", "bold": true},{"text": "\n","bold": false}]



## Setings
execute if score .recoil Settings matches 1 run tellraw @s [{"text": "Recoil: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to have recoil"}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/function guns:settings/no_recoil"}}]

execute if score .recoil Settings matches 0 run tellraw @s [{"text": "Recoil: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to have recoil"}},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/function guns:settings/recoil"}}]


execute if score .infiniteAmmo Settings matches 1 run tellraw @s [{"text": "Infinite Ammo: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to shoot infinite bullets"}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/function guns:settings/no_infinite_ammo"}}]

execute if score .infiniteAmmo Settings matches 0 run tellraw @s [{"text": "Infinite Ammo: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to shoot infinite bullets"}},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/function guns:settings/infinite_ammo"}}]


execute if score .breakableBlocks Settings matches 1 run tellraw @s [{"text": "Block breaking: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to break certain blocks"}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/function guns:settings/no_breaking"}}]

execute if score .breakableBlocks Settings matches 0 run tellraw @s [{"text": "Block breaking: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to break certain blocks"}},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/function guns:settings/breaking"}}]


execute if score .gunSounds Settings matches 1 run tellraw @s [{"text": "Shooting Sound: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to have a shooting sound"}},{"text": "Enabled", "color": "green", "clickEvent": {"action": "run_command", "value": "/function guns:settings/no_sound"}}]

execute if score .gunSounds Settings matches 0 run tellraw @s [{"text": "Shooting Sound: ", "color": "aqua", "hoverEvent":{"action":"show_text","value":"Allow guns to have a shooting sound"}},{"text": "Disabled", "color": "red", "clickEvent": {"action": "run_command", "value": "/function guns:settings/sound"}}]



tellraw @s [{"text": "\n"},{"text": "Click on Enabled/Disabled to change it!", "color": "dark_aqua"}]
tellraw @s {"text": "Open this menu again with /trigger Settings", "color": "gold"}