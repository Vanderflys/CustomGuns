scoreboard players remove .Bloom Gun.Stats 1

execute store result storage guns:variables Bloom.X int 1 run random value 1..100
execute store result storage guns:variables Bloom.Y int 1 run random value 1..100

# Weapons with bullet spread usually have shorter range
scoreboard players operation @s Raycast = .Range Gun.Stats
execute anchored eyes positioned ^ ^ ^.5 run function guns:bullet_tracer/spread with storage guns:variables Bloom
kill @e[type=marker]

execute if score .Bloom Gun.Stats matches 1.. run function guns:bullet_tracer/bloom