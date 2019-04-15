summon area_effect_cloud ~ -1 ~ {Tags:["cpp_chunk","cpp_undet"],Duration:2147483647}
scoreboard players set #32 cppValue 32
execute store result score #temp cppValue run data get entity @e[tag=cpp_undet,limit=1] Pos[0]
scoreboard players operation #temp cppValue /= #32 cppValue
scoreboard players add #temp cppValue 1
execute store result entity @e[tag=cpp_undet,sort=nearest,limit=1] Pos[0] double 1 run scoreboard players operation #temp cppValue *= #32 cppValue

execute store result score #temp cppValue run data get entity @e[tag=cpp_undet,limit=1] Pos[2]
scoreboard players operation #temp cppValue /= #32 cppValue
scoreboard players add #temp cppValue 1
execute store result entity @e[tag=cpp_undet,sort=nearest,limit=1] Pos[2] double 1 run scoreboard players operation #temp cppValue *= #32 cppValue

execute at @e[tag=cpp_undet,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["cpp_temp"]}
execute at @e[tag=cpp_undet,limit=1] run spreadplayers ~16 ~16 0 15 false @e[type=area_effect_cloud,tag=cpp_temp]
execute at @e[type=area_effect_cloud,tag=cpp_temp,limit=1] run loot spawn ~ ~ ~ loot cpp:generate/markers
execute at @e[type=area_effect_cloud,tag=cpp_temp,limit=1] run spreadplayers ~ ~ 0 15 false @e[type=item,nbt={Item:{tag:{isStrMark:1b}}}]

tag @e[tag=cpp_undet] remove cpp_undet
kill @e[tag=cpp_temp]
execute as @e[type=item,nbt={Item:{tag:{isStrMark:1b}}}] at @s run function cpp:generate/build
