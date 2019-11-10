function cpp:golem/init/get_spawn
execute at @e[type=area_effect_cloud,distance=..8,tag=cpp_golem_spawn,limit=1] run function cpp:golem/init/type1
kill @e[type=area_effect_cloud,distance=..8,tag=cpp_golem_spawn,limit=1]
