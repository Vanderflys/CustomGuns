# [x,z]*Rot(270) = [z,-x]
scoreboard players set .z Raycast 100
scoreboard players operation .z Raycast -= #x Raycast
scoreboard players operation .x Raycast = #z Raycast