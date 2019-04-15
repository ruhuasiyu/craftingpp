execute if entity @s[distance=..32] if entity @e[type=#cpp:normal_mob,distance=..1] run tag @e[type=#cpp:normal_mob,distance=..1,nbt=!{NoAI:1b}] add cpp_front_entity
execute if entity @s[distance=..32] unless entity @e[type=#cpp:normal_mob,distance=..1] positioned ^ ^ ^0.5 anchored feet run function cpp:magic/get_front_entity
particle entity_effect ~ ~ ~ 0.7 0.7 0.3 1 0
