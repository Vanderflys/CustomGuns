## Store gun ID if holding gun
execute as @a[scores={Gun.ID=0..}] run scoreboard players operation IDCheck Gun.ID = @s Gun.ID
execute as @a[nbt={SelectedItem:{tag:{CustomWeapon:1b}}}] store result score @s Gun.ID run data get entity @s SelectedItem.tag.Data.ID
execute as @a[scores={Gun.ID=0..}] unless score @s Gun.ID = IDCheck Gun.ID run scoreboard players set @s Cooldown 0


## ADS system
execute as @a[tag=!Scoping, nbt={Inventory:[{Slot:-106b, id:"minecraft:ender_eye"}]}] if predicate guns:sneaking run tag @s add Scoping
execute as @a[tag=Scoping] unless predicate guns:sneaking run tag @s remove Scoping

execute if score .scoping Settings matches 1 as @a[tag=Scoping] run effect give @s slowness infinite 1 true
execute if score .scoping Settings matches 1 as @a[tag=!Scoping] run effect clear @s slowness


## Cooldown system
scoreboard players remove @a[scores={Cooldown=1..}] Cooldown 1
scoreboard players remove @a[scores={Gun.ShotNow=1..}] Gun.ShotNow 1


## Reload system
execute as @a[nbt={SelectedItem:{tag:{CustomWeapon:1b, Data:{Bullets:0}}}}, scores={Reload=..0}] if score @s Gun.ID = IDCheck Gun.ID run function guns:reload/check with entity @s SelectedItem.tag.Data
execute as @a[tag=Reloading, nbt={SelectedItem:{tag:{CustomWeapon:1b}}}] unless score @s Gun.ID = IDCheck Gun.ID run scoreboard players set @s Reload -1
execute as @a[tag=Reloading, nbt={SelectedItem:{tag:{CustomWeapon:1b}}}] unless score @s Gun.ID = IDCheck Gun.ID run tag @s remove Reloading

execute as @a[nbt={SelectedItem:{tag:{CustomWeapon:1b, Data:{Bullets:0}}}}] run scoreboard players remove @a[scores={Reload=1..}] Reload 1
execute as @a[nbt={SelectedItem:{tag:{CustomWeapon:1b, Data:{Bullets:0}}}}, scores={Reload=0}] run function guns:reload/add_bullets


execute as @a[scores={Settings.Change=1..}] run function main:cheats/trigger