execute as @e[type=area_effect_cloud,tag=cpp_aec_marker] run data modify entity @s Age set value 0
execute as @e[type=armor_stand,tag=cpp_need_fire] run data modify entity @s Fire set value 32767s
execute as @e[type=armor_stand,tag=cpp_beacon_enhancer] at @s unless predicate cpp:redstone_power if block ~ ~-1 ~ beacon run function cpp:beacon_enhancer/check
schedule function cpp:tick600 600t
