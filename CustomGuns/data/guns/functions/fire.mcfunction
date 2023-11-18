## Set scores for default of 100 blocks
scoreboard players operation @s Raycast = .Range Gun.Stats


## Go through the raycast loop 
tag @s add Shooter
summon marker ~ ~ ~ {Tags:[BlockChecker]}
execute if score .Bloom Gun.Stats matches 0 anchored eyes positioned ^ ^ ^.5 run function guns:bullet_tracer/raycast
execute if score .Bloom Gun.Stats matches 1.. run function guns:bullet_tracer/bloom


## Extra effects for resource pack

# execute if score @s Gun.ID matches 1 run playsound vandal master @s ~ ~ ~
execute if score .gunSounds Settings matches 1 run playsound block.note_block.hat master @s ~ ~ ~ 1 1



$execute if score .recoil Settings matches 1 run tp @s ~ ~ ~ ~ ~-$(Recoil)


## Gun calculations
scoreboard players operation @s Cooldown = .Cooldown Gun.Stats

execute if score .infiniteAmmo Settings matches 0 run function guns:bullets



## End of the shot
kill @e[type=marker]

tag @s remove Shooter
scoreboard players set #Hit Raycast 0