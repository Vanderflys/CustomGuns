## Get Y coords of the block
execute store result score .y Raycast run data get entity @e[type=marker, tag=BlockChecker, limit=1] Pos[1] 100.0
scoreboard players operation .y Raycast %= #100 Raycast

execute if score .y Raycast matches ..75 run scoreboard players set @s Raycast 0