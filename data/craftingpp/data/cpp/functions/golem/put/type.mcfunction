function cpp:golem/put/ray
execute at @e[type=area_effect_cloud,distance=..8,tag=cpp_release_point,limit=1] run function cpp:golem/put/type1
kill @e[type=area_effect_cloud,distance=..8,tag=cpp_release_point,limit=1]
