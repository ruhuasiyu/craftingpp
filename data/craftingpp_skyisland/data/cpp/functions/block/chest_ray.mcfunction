execute if entity @s[distance=..6] if block ~ ~ ~ chest align xyz run function cpp:block/chest_done
execute if entity @s[distance=..6] unless block ~ ~ ~ chest positioned ^ ^ ^0.005 anchored feet run function cpp:block/chest_ray
