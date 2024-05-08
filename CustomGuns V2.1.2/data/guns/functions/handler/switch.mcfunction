execute if score @s Cooldown matches 1.. run scoreboard players remove @s Cooldown 1
execute if score @s Reload matches 1.. run scoreboard players remove @s Reload 1

# --------------------------------------------------------------------------------- #

execute store result score @s Gun.ID run data get entity @s SelectedItemSlot
execute if score @s Cooldown matches 1.. unless score @s Gun.ID = @s Gun.PrevID run scoreboard players set @s Cooldown 1
execute if score @s Reload matches 1.. unless score @s Gun.ID = @s Gun.PrevID run scoreboard players set @s Reload 0

execute store result score @s Gun.PrevID run scoreboard players operation @s Gun.PrevID = @s Gun.ID

# --------------------------------------------------------------------------------- #

scoreboard players operation @s Semi_auto_Prev = @s Semi_auto
scoreboard players set @s Semi_auto 0
