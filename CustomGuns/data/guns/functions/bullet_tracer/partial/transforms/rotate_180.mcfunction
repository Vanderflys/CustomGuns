# [x,z]*Rot(180) = [-x,-z]
scoreboard players set .x Raycast 100
scoreboard players set .z Raycast 100
scoreboard players operation .x Raycast -= #x Raycast
scoreboard players operation .z Raycast -= #z Raycast