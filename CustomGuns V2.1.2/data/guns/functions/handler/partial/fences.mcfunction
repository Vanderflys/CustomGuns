## Get Y coords of the block
execute store result score .x Raycast run data get entity @e[type=marker, tag=BlockChecker, limit=1] Pos[0] 100.0
scoreboard players operation .x Raycast %= #100 Raycast

execute store result score .z Raycast run data get entity @e[type=marker, tag=BlockChecker, limit=1] Pos[2] 100.0
scoreboard players operation .z Raycast %= #100 Raycast

# --------------------------------------------------------------------------------- #

execute if block ~ ~ ~ #minecraft:fences[east=false,north=false,west=false,south=false] if score .x Raycast matches 48..52 run scoreboard players set @s Raycast 0
execute if block ~ ~ ~ #minecraft:fences[east=false,north=false,west=false,south=false] if score .z Raycast matches 48..52 run scoreboard players set @s Raycast 0