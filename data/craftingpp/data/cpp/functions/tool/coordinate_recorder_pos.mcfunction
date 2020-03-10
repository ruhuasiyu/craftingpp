function cpp:misc/get_front_air
execute at @e[type=area_effect_cloud,tag=cpp_front_air,distance=..7] run function cpp:tool/coordinate_recorder_done
kill @e[type=area_effect_cloud,tag=cpp_front_air,distance=..7]
