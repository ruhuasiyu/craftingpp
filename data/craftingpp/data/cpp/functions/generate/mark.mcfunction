summon area_effect_cloud ~32 0 ~32 {Age:0,Duration:2147483647,Tags:["cpp_aec_marker","cpp_chunk","cpp_temp"]}
execute as @e[type=area_effect_cloud,tag=cpp_temp] run function cpp:generate/aec
# 扩散生成
loot spawn ~ ~ ~ loot cpp:misc/generate
execute store result score #t cppValue run spreadplayers ~ ~ 0 15 false @e[type=item,nbt={Item:{tag:{cpp_generate_marker:1b}}}]
execute as @e[type=item,nbt={Item:{tag:{cpp_generate_marker:1b}}}] at @s if block ~ ~-1 ~ #cpp:replacable run tp ~ ~-1 ~
execute as @e[type=item,nbt={Item:{tag:{cpp_generate_marker:1b}}}] at @s if block ~ ~-1 ~ #cpp:replacable run tp ~ ~-1 ~
execute as @e[type=item,nbt={Item:{tag:{cpp_generate_marker:1b}}}] at @s run function cpp:generate/build
