execute if entity @s[distance=..6] if block ~ ~ ~ acacia_sapling align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["cpp_plant_pos"],Duration:1}
execute if entity @s[distance=..6] unless block ~ ~ ~ acacia_sapling positioned ^ ^ ^0.005 anchored feet run function cpp:block/acacia_sapling_ray
