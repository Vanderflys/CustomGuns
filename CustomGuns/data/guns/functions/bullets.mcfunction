data modify storage guns:variables stats set from entity @s SelectedItem.tag.Data

scoreboard players operation .Bullets Gun.Stats -= #1 Gun.Stats
execute store result storage guns:variables stats.Bullets int 1 run scoreboard players get .Bullets Gun.Stats

execute if score .Bullets Gun.Stats matches ..0 run tag @s add Reloading
execute if score .Bullets Gun.Stats matches ..0 run title @s actionbar {"text":"Reloading!","color":"red","bold": true}

item modify entity @s weapon.mainhand guns:set_stats