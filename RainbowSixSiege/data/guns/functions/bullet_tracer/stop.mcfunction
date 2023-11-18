execute unless entity @e[type=marker, tag=EndRay] run summon marker ~ ~ ~ {Tags:["EndRay"]}


## Tracer Start Position
$execute as @s[tag=!Scoping] at @s anchored eyes positioned ^$(X) ^$(Y) ^$(Z) facing entity @e[type=marker, tag=EndRay, limit=1] feet run function guns:bullet_tracer/tracer
execute as @s[tag=Scoping] at @s anchored eyes positioned ^ ^-0.2 ^ facing entity @e[type=marker, tag=EndRay, limit=1] feet run function guns:bullet_tracer/tracer


scoreboard players set @s Raycast 0