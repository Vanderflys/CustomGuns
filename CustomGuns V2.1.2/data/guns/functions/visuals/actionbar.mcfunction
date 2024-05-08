execute store result score .Bullets Temp run data get entity @s SelectedItem.components."minecraft:custom_data".bullets
data modify storage guns:temp Name set from entity @s SelectedItem.components."minecraft:custom_data".name

execute store result score .magazine Temp run function guns:handler/get_mag

title @s[tag=!Reloading] actionbar [{"nbt":"Name","storage":"guns:temp","color":"gold"},{"text":" - ","color":"dark_gray"},{"score":{"name":".Bullets","objective":"Temp"}},{"text":" | ","color":"dark_gray"},{"score":{"name":".Magazine","objective":"Temp"}}]

title @s[tag=Reloading] actionbar [{"text":"Reloading...","color":"red"}]