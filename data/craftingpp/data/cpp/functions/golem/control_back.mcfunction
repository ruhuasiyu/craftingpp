scoreboard players set @s cppTick 0
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_golem_spawn"]}
tag @s add cpp_golem_back
execute as @e[type=area_effect_cloud,tag=cpp_golem_spawn] run function cpp:golem/control_back1
tag @s remove cpp_golem_back
