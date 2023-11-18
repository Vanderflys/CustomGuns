data modify storage guns:variables stats set from entity @s SelectedItem.tag.Data
data modify storage guns:variables stats.Bullets set from storage guns:variables stats.Magazine

execute store result score .Bullets Gun.Stats run data get storage guns:variables stats.Bullets
item modify entity @s weapon.mainhand guns:set_stats
tag @s remove Reloading

title @s actionbar {"text":"Reloaded!","color":"green","bold": true}