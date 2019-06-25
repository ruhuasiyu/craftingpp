execute if entity @s[distance=..6] unless block ~ ~ ~ #minecraft:wall_signs positioned ^ ^ ^0.005 anchored feet run function cpp:block/wall_sign_ray
execute if block ~ ~ ~ #minecraft:wall_signs align xyz positioned ~0.5 ~ ~0.5 run function cpp:block/wall_sign_modify
