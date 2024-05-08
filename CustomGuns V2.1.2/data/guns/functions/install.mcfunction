scoreboard objectives add Raycast dummy

scoreboard objectives add Temp dummy
scoreboard players set #100 Temp 100
scoreboard players set #1 Temp 1

scoreboard objectives add Cooldown dummy
scoreboard players set @a Cooldown 0

scoreboard objectives add Semi_auto dummy
scoreboard objectives add Semi_auto_Prev dummy

scoreboard objectives add Reload dummy
scoreboard players set @a Reload 0

scoreboard objectives add Gun.ID dummy
scoreboard objectives add Gun.PrevID dummy
scoreboard objectives add Gun.Stats dummy

## Settings with boolean values
scoreboard objectives add Settings trigger
scoreboard players enable @s Settings

execute unless score .recoil Settings matches 0..1 run scoreboard players set .recoil Settings 1
execute unless score .infiniteAmmo Settings matches 0..1 run scoreboard players set .infiniteAmmo Settings 0
execute unless score .breakableBlocks Settings matches 0..1 run scoreboard players set .breakableBlocks Settings 0
execute unless score .gunSounds Settings matches 0..1 run scoreboard players set .gunSounds Settings 1


recipe give @a guns:ammo/heavy_ammo
recipe give @a guns:ammo/light_ammo
recipe give @a guns:ammo/medium_ammo
recipe give @a guns:ammo/pellet_ammo

recipe give @a guns:guns/glock_17
recipe give @a guns:guns/ak_47
recipe give @a guns:guns/desert_eagle
recipe give @a guns:guns/kar_98k
recipe give @a guns:guns/spas_12
recipe give @a guns:guns/mp7