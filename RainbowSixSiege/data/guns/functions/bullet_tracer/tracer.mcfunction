particle mycelium ~ ~ ~ 0 0 0 0 1 force

execute unless entity @e[type=marker, tag=EndRay, distance=...25] positioned ^ ^ ^.25 if block ~ ~ ~ #allowed run function guns:bullet_tracer/tracer