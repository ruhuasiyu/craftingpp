execute if entity @s[distance=..6] if block ~ ~ ~ petrified_oak_slab align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~ ~ {Tags:["cpp_machine_pos"]}
execute if entity @s[distance=..6] unless block ~ ~ ~ petrified_oak_slab positioned ^ ^ ^0.005 anchored feet run function cpp:block/machine/get_pos
