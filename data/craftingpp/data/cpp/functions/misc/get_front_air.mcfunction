execute if entity @s[distance=..6] unless block ^ ^ ^ #cpp:fluid positioned ^ ^ ^-0.005 run summon area_effect_cloud ~ ~ ~ {Tags:["cpp_front_air"]}
execute if entity @s[distance=..6] if block ^ ^ ^ #cpp:fluid positioned ^ ^ ^0.005 run function cpp:misc/get_front_air
