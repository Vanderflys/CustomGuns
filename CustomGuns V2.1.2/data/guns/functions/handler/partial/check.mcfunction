tp @e[type=marker, tag=BlockChecker, limit=1] ~ ~ ~

execute if block ~ ~ ~ #slabs run function guns:handler/partial/slab
execute if block ~ ~ ~ #stairs run function guns:handler/partial/stair
execute if block ~ ~ ~ #doors run function guns:handler/partial/door
execute if block ~ ~ ~ #fences run function guns:handler/partial/fences
execute if block ~ ~ ~ enchanting_table run function guns:handler/partial/etable