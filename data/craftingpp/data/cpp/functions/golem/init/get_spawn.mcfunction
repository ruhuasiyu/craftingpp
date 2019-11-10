execute if entity @s[distance=..6] if block ~ ~ ~ #cpp:golem_motion_blocks align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Tags:["cpp_golem_spawn"]}
execute if entity @s[distance=..6] unless block ~ ~ ~ #cpp:golem_motion_blocks positioned ^ ^ ^0.005 anchored feet run function cpp:golem/init/get_spawn
