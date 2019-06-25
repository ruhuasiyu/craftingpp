execute if entity @s[distance=..6] if block ~ ~ ~ #cpp:golem_control_blocks align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Tags:["cpp_front_control_block"]}
execute if entity @s[distance=..6] unless block ~ ~ ~ #cpp:golem_control_blocks positioned ^ ^ ^0.005 anchored feet run function cpp:use_carrot_on_a_stick/golem/get_front_control_block
