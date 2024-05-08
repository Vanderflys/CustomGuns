tag @s add Caster
summon marker ~ ~ ~ {Tags:[BlockChecker]}

execute if score .gunSounds Settings matches 1 run function guns:handler/visuals/sounds

# --------------------------------------------------------------------------------- #

execute store result score @s Cooldown run data get entity @s SelectedItem.components."minecraft:custom_data".cooldown

execute store result score @s Raycast run data get entity @s SelectedItem.components."minecraft:custom_data".range 4
execute anchored eyes positioned ^ ^ ^ run function guns:handler/raycast

# --------------------------------------------------------------------------------- #

execute if score .infiniteAmmo Settings matches 0 store result storage guns:stats Bullets int 1 run scoreboard players operation .bullets Gun.Stats -= #1 Temp
execute if score .infiniteAmmo Settings matches 0 run function guns:handler/update_stats with storage guns:stats

execute if score .recoil Settings matches 1 run function guns:handler/visuals/recoil

# --------------------------------------------------------------------------------- #

tag @s remove Caster
tag @e remove hit

kill @e[type=marker, tag=BlockChecker]
kill @e[type=marker, tag=Tracer]