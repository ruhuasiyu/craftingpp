function cpp:misc/get_front_air
execute at @e[type=area_effect_cloud,distance=..6,tag=cpp_front_air,limit=1] run function cpp:tool/infinite_bucket_put1
kill @e[type=area_effect_cloud,distance=..6,tag=cpp_front_air,limit=1]