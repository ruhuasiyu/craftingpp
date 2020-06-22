tag @s add cpp_new_player
scoreboard players add #skyloc cppValue 1
# 回字形折点
execute if score #skyloc cppValue >= #skylen cppValue run function cpp:adv/root_skyisland0
execute if score #skyfac cppValue matches 0 run scoreboard players add #skymkx cppValue 1
execute if score #skyfac cppValue matches 1 run scoreboard players add #skymkz cppValue 1
execute if score #skyfac cppValue matches 2 run scoreboard players remove #skymkx cppValue 1
execute if score #skyfac cppValue matches 3 run scoreboard players remove #skymkz cppValue 1
summon area_effect_cloud ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["cpp_temp"]}
execute as @e[type=area_effect_cloud,tag=cpp_temp,distance=..1,limit=1] run function cpp:adv/root_skyisland1
tag @s remove cpp_new_player
