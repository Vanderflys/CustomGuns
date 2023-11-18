advancement revoke @s only guns:equip

execute if data entity @s Inventory[{Slot:-106b, id:"minecraft:ender_eye"}] run item replace entity @s weapon.offhand with minecraft:air
execute if data storage guns:variables Offhand run data remove storage guns:variables Offhand