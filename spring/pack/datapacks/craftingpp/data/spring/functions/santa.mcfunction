summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cpp_aec_v","cpp_aec_v_g"],Duration:2}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cpp_aec_v"],Duration:2}
kill @e[type=minecraft:area_effect_cloud,tag=cpp_aec_v,sort=random,limit=1]
execute if entity @e[tag=cpp_aec_v_g] run data merge entity @s {CustomName:"圣诞老人",Career:2,Offers:{Recipes:[{buy:{id:"minecraft:leather_boots",Count:1b},buyB:{id:"minecraft:emerald",Count:49b},sell:{id:"minecraft:chest",Count:1b,tag:{display:{Name:"圣诞礼物"},BlockEntityTag:{LootTable:"spring:chests/santa"}}},maxUses:7}]},ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"a60c9655-b7eb-47ca-91c0-7851e4bd8274",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhhYzE5OGI4ODUwMWM5NDhhOTMzZDUyYjExMzNlM2Y2NTAyY2M1ZmY1YWNlM2Q1YzYwYWNlYjU0NDk3NzZkIn19fQ=="}]}}}}],ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f]}

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cpp_aec_r","cpp_aec_r_g"],Duration:2}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cpp_aec_r"],Duration:2}
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g] cppRandom 49
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 4
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 8
execute store result entity @s Offers.Recipes[0].buyB.Count byte 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
kill @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r]

tag @s add cpp_checked
kill @e[type=minecraft:area_effect_cloud,tag=cpp_aec_v]
