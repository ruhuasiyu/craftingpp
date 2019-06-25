function cpp:magic/get_front_air
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] run fill ~-3 0 ~-3 ~3 255 ~3 air replace #cpp:face_block
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] rotated as @s positioned ^ ^ ^2 run fill ~-3 0 ~-3 ~3 255 ~3 air replace #cpp:face_block
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] rotated as @s positioned ^ ^ ^4 run fill ~-3 0 ~-3 ~3 255 ~3 air replace #cpp:face_block
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] rotated as @s positioned ^ ^ ^6 run fill ~-3 0 ~-3 ~3 255 ~3 air replace #cpp:face_block
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] rotated as @s positioned ^ ^ ^8 run fill ~-3 0 ~-3 ~3 255 ~3 air replace #cpp:face_block
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] rotated as @s positioned ^ ^ ^10 run fill ~-3 0 ~-3 ~3 255 ~3 air replace #cpp:face_block
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] rotated as @s positioned ^ ^ ^12 run fill ~-3 0 ~-3 ~3 255 ~3 air replace #cpp:face_block
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] rotated as @s positioned ^ ^ ^14 run fill ~-3 0 ~-3 ~3 255 ~3 air replace #cpp:face_block
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] rotated as @s positioned ^ ^ ^16 run fill ~-3 0 ~-3 ~3 255 ~3 air replace #cpp:face_block
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] rotated as @s positioned ^ ^ ^18 run fill ~-3 0 ~-3 ~3 255 ~3 air replace #cpp:face_block
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] rotated as @s positioned ^ ^ ^20 run fill ~-3 0 ~-3 ~3 255 ~3 air replace #cpp:face_block
scoreboard players remove @s cppMana 30
