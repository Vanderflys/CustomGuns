## Stop the raycast and set the targets
scoreboard players set @a[tag=Shooter] Raycast 0
scoreboard players set .Hit Raycast 1
tag @s add hit

# --------------------------------------------------------------------------------- #
 
$execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.35] run damage @s $(headshot) bypass:mob_attack
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.35] run playsound block.note_block.bell master @a[tag=Caster] ~ ~ ~ 1 1
$execute positioned ~ ~-1.7 ~ unless entity @s[distance=..0.35] run damage @s $(damage) bypass:mob_attack