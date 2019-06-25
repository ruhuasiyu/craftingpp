execute if entity @s[distance=..6] unless block ~ ~ ~ #minecraft:standing_signs positioned ^ ^ ^0.005 anchored feet run function cpp:block/sign_ray
execute if block ~ ~ ~ #minecraft:standing_signs align xyz positioned ~0.5 ~0.312 ~0.5 run function cpp:block/sign_modify
