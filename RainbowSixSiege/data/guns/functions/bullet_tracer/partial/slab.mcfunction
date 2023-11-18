## Get Y coords of the block
execute store result score .y Raycast run data get entity @e[type=marker, tag=BlockChecker, limit=1] Pos[1] 100.0
scoreboard players operation .y Raycast %= #100 Raycast


## Check if its a bottom slab and store the score
execute store result score .type Raycast if block ~ ~ ~ #slabs[type=bottom]

execute if block ~ ~ ~ #slabs[type=double] run scoreboard players set @s Raycast 0

execute if score .type Raycast matches 1 if score .y Raycast matches ..55 run scoreboard players set @s Raycast 0
execute if score .type Raycast matches 0 if score .y Raycast matches 45.. run scoreboard players set @s Raycast 0