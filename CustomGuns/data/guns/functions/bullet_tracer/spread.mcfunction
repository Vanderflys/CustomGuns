scoreboard players remove @s Raycast 1


## Check for blocks
execute if block ~ ~ ~ #partial run function guns:bullet_tracer/partial/check
execute if block ~ ~ ~ #breakable run setblock ~ ~ ~ air destroy


## Hit detection for entities
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#targets, tag=!Shooter, tag=!hit, dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run function guns:hit/check
execute if score @s Raycast matches 0 if score #Hit Raycast matches 1 run summon marker ~ ~ ~ {Tags:["EndRay"]}



## Repeat if clear else stop
execute if score @s Raycast matches 0 run function guns:bullet_tracer/stop with entity @s SelectedItem.tag.Data
$execute if score @s Raycast matches 1.. positioned ^.$(X) ^.$(Y) ^.25 unless block ~ ~ ~ #minecraft:allowed run function guns:bullet_tracer/stop with entity @s SelectedItem.tag.Data
$execute if score @s Raycast matches 1.. positioned ^.$(X) ^.$(Y) ^.25 if block ~ ~ ~ #allowed run function guns:bullet_tracer/raycast