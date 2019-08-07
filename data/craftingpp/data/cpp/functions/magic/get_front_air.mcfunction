execute if entity @s[distance=..32] unless block ^ ^ ^ #cpp:fluid run summon area_effect_cloud ^ ^ ^-0.005 {Tags:["cpp_far_front_air"]}
execute if entity @s[distance=..32] if block ^ ^ ^ #cpp:fluid positioned ^ ^ ^0.005 anchored feet run function cpp:magic/get_front_air
particle entity_effect ^ ^ ^ 0.7 0.7 0.3 1 0
