execute store result score .magazine Gun.Stats run function guns:handler/get_mag

execute store result score .reload_bullets Gun.Stats run data get entity @s SelectedItem.components."minecraft:custom_data".reload_bullets

execute store result storage guns:stats Bullets int 1 run scoreboard players get .reload_bullets Gun.Stats
execute store result storage guns:stats RemoveBullets int 1 run scoreboard players get .reload_bullets Gun.Stats

function guns:handler/update_stats with storage guns:stats
function guns:handler/remove with storage guns:stats

tag @s remove Reloading