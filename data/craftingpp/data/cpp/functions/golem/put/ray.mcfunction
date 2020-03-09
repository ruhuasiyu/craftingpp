execute if entity @s[distance=..6] unless block ~ ~ ~ #cpp:air align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["cpp_release_point"]}
execute if entity @s[distance=..6] if block ~ ~ ~ #cpp:air positioned ^ ^ ^0.005 anchored feet run function cpp:golem/put/ray
