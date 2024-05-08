particle mycelium ~ ~ ~ 0 0 0 0 0 force

execute unless entity @e[type=marker, limit=1, tag=Tracer, distance=...4] positioned ^ ^ ^.25 run return run function guns:handler/visuals/tracer
execute as @e[type=marker, limit=1, tag=Tracer, distance=...4] run kill @s