execute if entity @s[distance=..6] if block ~ ~ ~ carved_pumpkin align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["cpp_carved_pumpkin_pos"],Duration:1}
execute if entity @s[distance=..6] unless block ~ ~ ~ carved_pumpkin positioned ^ ^ ^0.005 anchored feet run function cpp:block/carved_pumpkin_ray
