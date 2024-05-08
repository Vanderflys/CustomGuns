advancement revoke @s only guns:right_click

# --------------------------------------------------------------------------------- #

execute store result score .bullets Gun.Stats run data get entity @s SelectedItem.components."minecraft:custom_data".bullets
execute store result score .reload_bullets Gun.Stats run data get entity @s SelectedItem.components."minecraft:custom_data".reload_bullets
execute store result score .magazine Gun.Stats run function guns:handler/get_mag

# --------------------------------------------------------------------------------- #

execute as @s[tag=!Reloading] if score .bullets Gun.Stats matches 0 if score .magazine Gun.Stats >= .reload_bullets Gun.Stats store result score @s Reload run data get entity @s SelectedItem.components."minecraft:custom_data".reload_time
execute as @s[tag=!Reloading] if score .bullets Gun.Stats matches 0 if score .magazine Gun.Stats >= .reload_bullets Gun.Stats run tag @s add Reloading

execute as @s[tag=!Reloading] if score .bullets Gun.Stats matches 0 if score .magazine Gun.Stats < .reload_bullets Gun.Stats run return run tellraw @s {"text":"Not enough bullets to reload","color":"red"}

# --------------------------------------------------------------------------------- #

execute store result score .semi-auto Gun.Stats run data get entity @s SelectedItem.components."minecraft:custom_data".semi-auto
execute if score .semi-auto Gun.Stats matches 1 run return run function guns:handler/semi_auto 

execute unless score @s Cooldown matches 1.. if score .bullets Gun.Stats matches 1.. run function guns:handler/shoot