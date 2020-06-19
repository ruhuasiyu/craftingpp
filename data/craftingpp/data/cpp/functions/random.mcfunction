summon area_effect_cloud ~ 0 ~ {Tags:["cpp_random"]}
execute store result score #rand cppValue run data get entity @e[tag=cpp_random,limit=1,type=area_effect_cloud] UUID[0]
kill @e[tag=cpp_random,type=area_effect_cloud]
scoreboard players operation #random_interval cppValue = #random_max cppValue
scoreboard players operation #random_interval cppValue -= #random_min cppValue
scoreboard players add #random_interval cppValue 1
scoreboard players operation #rand cppValue %= #random_interval cppValue
scoreboard players operation #rand cppValue += #random_min cppValue
