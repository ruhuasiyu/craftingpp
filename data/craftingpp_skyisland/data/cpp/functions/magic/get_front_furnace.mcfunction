execute if entity @s[distance=..32] if block ~ ~ ~ furnace run summon area_effect_cloud ^ ^ ^-0.005 {Tags:["cpp_front_furnace"]}
execute if entity @s[distance=..32] unless block ~ ~ ~ furnace positioned ^ ^ ^0.005 anchored feet run function cpp:magic/get_front_furnace
