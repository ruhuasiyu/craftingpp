tag @s add cpp_random_target
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_random_target"]}
scoreboard players set @e[tag=cpp_random_target] cppRandom 0
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 1
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 2
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 4
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 8
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 16
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 32
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 64
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 128
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 256
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 512
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 1024
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 2048
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 4096
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 8192
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 16384
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 32768
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 65536
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 131072
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 262144
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 524288
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 1048576
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 2097152
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 4194304
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 8388608
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 16777216
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 33554432
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 67108864
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 134217728
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 268435456
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 536870912
scoreboard players add @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 1073741824

scoreboard players operation #random_max cppRandom -= #random_min cppRandom
scoreboard players add #random_max cppRandom 1
scoreboard players operation @s cppRandom %= #random_max cppRandom
scoreboard players operation @s cppRandom += #random_min cppRandom
tag @s remove cpp_random_target
scoreboard players reset @e[type=area_effect_cloud,tag=cpp_random_target] cppRandom
kill @e[type=area_effect_cloud,tag=cpp_random_target]
