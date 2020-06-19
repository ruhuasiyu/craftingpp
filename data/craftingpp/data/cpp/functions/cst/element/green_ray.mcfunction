execute if entity @s[distance=..6] if block ^ ^ ^ #cpp:liquid[level=0] run function cpp:cst/element/green_store
execute if entity @s[distance=..6] unless block ^ ^ ^ #cpp:liquid[level=0] positioned ^ ^ ^0.005 run function cpp:cst/element/green_ray
