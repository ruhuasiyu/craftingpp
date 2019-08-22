summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cpp_tp_target_aec"]}
tag @s add cpp_tp_target_player
execute as @e[type=area_effect_cloud,tag=cpp_tp_target_aec,limit=1,sort=nearest,distance=..1] run function cpp:use_carrot_on_a_stick/tool/origin_of_the_world3
tag @s remove cpp_tp_target_player
