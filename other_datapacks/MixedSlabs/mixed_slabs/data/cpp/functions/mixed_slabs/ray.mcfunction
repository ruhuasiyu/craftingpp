execute if entity @s[distance=..5] unless block ~ ~ ~ #minecraft:slabs[type=bottom] positioned ^ ^ ^0.005 run function cpp:mixed_slabs/ray
execute if entity @s[distance=..5] if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ~ ~1 ~ #minecraft:slabs[type=bottom] unless blocks ~ ~ ~ ~ ~ ~ ~ ~1 ~ all run function cpp:mixed_slabs/done
