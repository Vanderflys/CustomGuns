execute as @a run function guns:handler/switch

# --------------------------------------------------------------------------------- #

execute as @a if data entity @s SelectedItem.components.'minecraft:custom_data'.damage run function guns:visuals/actionbar
execute as @a unless data entity @s SelectedItem.components.'minecraft:custom_data'.damage run title @s actionbar ""

# --------------------------------------------------------------------------------- #

execute as @a[tag=Reloading] if score @s Reload matches 0 run function guns:handler/reload

# --------------------------------------------------------------------------------- #

execute as @a if score @s Settings matches 1.. run function guns:settings/settings