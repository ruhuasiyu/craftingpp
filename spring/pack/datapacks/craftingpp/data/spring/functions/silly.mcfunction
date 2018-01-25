summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cpp_aec_v","cpp_aec_v_g"],Duration:2}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cpp_aec_v"],Duration:2}
kill @e[type=minecraft:area_effect_cloud,tag=cpp_aec_v,sort=random,limit=1]
execute if entity @e[tag=cpp_aec_v_g] run function spring:artist
execute unless entity @e[tag=cpp_aec_v_g] run function spring:fireworks
tag @s add cpp_checked
kill @e[type=minecraft:area_effect_cloud,tag=cpp_aec_v]
