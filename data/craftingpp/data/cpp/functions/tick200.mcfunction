execute as @e[type=area_effect_cloud,tag=cpp_aec_marker] run data modify entity @s Age set value 0
execute as @e[type=armor_stand,tag=cpp_need_fire] run data modify entity @s Fire set value 32767s
schedule function cpp:tick200 200t
