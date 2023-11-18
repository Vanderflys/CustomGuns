tp @e[type=marker, tag=BlockChecker, limit=1] ~ ~ ~

execute if block ~ ~ ~ #slabs run function guns:bullet_tracer/partial/slab
execute if block ~ ~ ~ #stairs run function guns:bullet_tracer/partial/stair
execute if block ~ ~ ~ #doors run function guns:bullet_tracer/partial/door
execute if block ~ ~ ~ enchanting_table run function guns:bullet_tracer/partial/etable