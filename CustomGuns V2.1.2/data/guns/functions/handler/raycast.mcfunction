scoreboard players remove @s Raycast 1

# --------------------------------------------------------------------------------- #

## Check for blocks
execute if block ~ ~ ~ #partial run function guns:handler/partial/check
execute if score .breakableBlocks Settings matches 0 if block ~ ~ ~ #breakable run scoreboard players set @s Raycast 0
execute if score .breakableBlocks Settings matches 1 if block ~ ~ ~ #breakable run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #allowed run scoreboard players set @s Raycast 0

# --------------------------------------------------------------------------------- #

## Hit detection for entities
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#targets, tag=!Caster, tag=!hit, dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run function guns:handler/hit_check with entity @a[tag=Caster, distance=..100, limit=1] SelectedItem.components."minecraft:custom_data"

execute if score @s Raycast matches 0 if score #Hit Raycast matches 1 run summon marker ~ ~ ~ {Tags:["Tracer"]}

# --------------------------------------------------------------------------------- #

## Repeat if clear else stop
execute if score @s Raycast matches 0 run summon marker ~ ~ ~ {NoGravity:1b, Tags:["Tracer"]}
execute if score @s Raycast matches 0 at @s anchored eyes positioned ^-0.2 ^ ^0.3 facing entity @e[type=marker, limit=1, tag=Tracer] feet run function guns:handler/visuals/tracer

execute if score @s Raycast matches 1.. positioned ^ ^ ^.25 run function guns:handler/raycast