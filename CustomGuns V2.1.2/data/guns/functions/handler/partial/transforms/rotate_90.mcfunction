# [x,z]*Rot(90) = [-z,x]
scoreboard players set .x Raycast 100
scoreboard players operation .x Raycast -= #z Raycast
scoreboard players operation .z Raycast = #x Raycast