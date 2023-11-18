scoreboard objectives add Raycast dummy
scoreboard players set #100 Raycast 100
scoreboard players set .y Raycast 0

scoreboard objectives add Bloom dummy

scoreboard objectives add Cooldown dummy
scoreboard players set @a Cooldown 0

scoreboard objectives add Reload dummy
scoreboard players set @a Reload 0

scoreboard objectives add Gun.ID dummy
scoreboard objectives add Gun.ShotNow dummy
scoreboard objectives add Gun.ShotPreviously dummy
scoreboard objectives add Gun.Stats dummy
scoreboard players set #1 Gun.Stats 1

## Settings with boolean values
scoreboard objectives add Settings dummy
scoreboard objectives add Settings.Change trigger
scoreboard players enable @a Settings.Change

execute unless score .recoil Settings matches 0..1 run scoreboard players set .recoil Settings 1
execute unless score .infiniteAmmo Settings matches 0..1 run scoreboard players set .infiniteAmmo Settings 1
execute unless score .breakableBlocks Settings matches 0..1 run scoreboard players set .breakableBlocks Settings 1
execute unless score .scoping Settings matches 0..1 run scoreboard players set .scoping Settings 1
execute unless score .gunSounds Settings matches 0..1 run scoreboard players set .gunSounds Settings 1