execute store result score #x Raycast run data get entity @s Pos[0] 100.0
execute store result score #z Raycast run data get entity @s Pos[2] 100.0

scoreboard players operation #x Raycast %= #100 Raycast
scoreboard players operation #z Raycast %= #100 Raycast

### Rotation Invarience
scoreboard players operation .x Raycast = #x Raycast
scoreboard players operation .z Raycast = #z Raycast

execute if block ~ ~ ~ #doors[facing=north] run function guns:bullet_tracer/partial/transforms/rotate_90
execute if block ~ ~ ~ #doors[facing=west] run function guns:bullet_tracer/partial/transforms/rotate_180
execute if block ~ ~ ~ #doors[facing=south] run function guns:bullet_tracer/partial/transforms/rotate_270

execute if block ~ ~ ~ #doors[hinge=left,open=true] if score .z Raycast matches ..25 run scoreboard players set @s Raycast 0
execute if block ~ ~ ~ #doors[hinge=right,open=true] if score .z Raycast matches 75.. run scoreboard players set @s Raycast 0
execute if block ~ ~ ~ #doors[open=false] if score .x Raycast matches ..25 run scoreboard players set @s Raycast 0