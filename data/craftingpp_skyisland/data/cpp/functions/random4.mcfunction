summon area_effect_cloud ~ ~ ~ {Tags:["cpp_random_target"]}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_random_target"]}
scoreboard players set @e[tag=cpp_random_target] cppRandom 0
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 1
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 2
scoreboard players operation @s cppRandom = @e[tag=cpp_random_target,sort=random,limit=1] cppRandom
kill @e[type=area_effect_cloud,tag=cpp_random_target]
