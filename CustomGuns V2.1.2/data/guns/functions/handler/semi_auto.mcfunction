scoreboard players set @s Semi_auto 1

# --------------------------------------------------------------------------------- #

execute store result score .bloom Gun.Stats run data get entity @s SelectedItem.components."minecraft:custom_data".bloom
execute if score .bloom Gun.Stats matches 1 if score @s Semi_auto_Prev matches 0 unless score @s Cooldown matches 1.. if score .bullets Gun.Stats matches 1.. run return run function guns:handler/spread

execute if score @s Semi_auto_Prev matches 0 unless score @s Cooldown matches 1.. if score .bullets Gun.Stats matches 1.. run function guns:handler/shoot