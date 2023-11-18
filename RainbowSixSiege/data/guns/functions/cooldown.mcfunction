advancement revoke @s only guns:right_click

scoreboard players operation @s Gun.ShotPreviously = @s Gun.ShotNow

execute unless entity @s[tag=Reloading] if score @s Cooldown matches 0 run function guns:get_data

execute unless entity @s[tag=Reloading] if score .Bullets Gun.Stats matches 1.. if score .semi-auto Gun.Stats matches 0 if score @s Cooldown matches 0 run function guns:fire with entity @s SelectedItem.tag.Data
execute unless entity @s[tag=Reloading] if score .Bullets Gun.Stats matches 1.. if score .semi-auto Gun.Stats matches 1 if score @s Gun.ShotPreviously matches 0 if score @s Cooldown matches 0 run function guns:fire with entity @s SelectedItem.tag.Data

scoreboard players set @s Gun.ShotNow 2