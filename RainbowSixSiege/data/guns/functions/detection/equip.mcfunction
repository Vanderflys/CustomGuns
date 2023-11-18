advancement revoke @s only guns:unequip

data modify storage guns:variables Offhand set from entity @s Inventory[{Slot:-106b}]
execute at @s run function guns:detection/item_return with storage guns:variables Offhand

item replace entity @s weapon.offhand with ender_eye{RightClick:1b}