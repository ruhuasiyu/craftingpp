data merge entity @s {CustomName:"书画师",Career:1,Offers:{Recipes:[{buy:{id:"minecraft:paper",Count:32b},sell:{id:"minecraft:emerald",Count:1b},maxUses:7},{buy:{id:"minecraft:rose_red",Count:16b},sell:{id:"minecraft:emerald",Count:1b},maxUses:7},{buy:{id:"minecraft:ink_sac",Count:16b},sell:{id:"minecraft:emerald",Count:1b},maxUses:7},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:filled_map",Count:1b,tag:{display:{Name:"福字"},map:20000,HideFlags:32}},maxUses:0},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:filled_map",Count:1b,tag:{display:{Name:"春字"},map:20001,HideFlags:32}},maxUses:0},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:filled_map",Count:1b,tag:{display:{Name:"上联1"},map:20002,HideFlags:32}},maxUses:0},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:filled_map",Count:1b,tag:{display:{Name:"上联2"},map:20003,HideFlags:32}},maxUses:0},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:filled_map",Count:1b,tag:{display:{Name:"下联1"},map:20004,HideFlags:32}},maxUses:0},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:filled_map",Count:1b,tag:{display:{Name:"下联2"},map:20005,HideFlags:32}},maxUses:0}]},ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"2226a814-212c-46d0-b1c5-c36a21d14e21",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGE0OTEzZmUyZThiYTVmMmNkZjM3Njk0ODQzYWU5NzNkNWM5NDg2ZWQ5MDNlYmU4MDdkYjVlMzY5YmZiN2EifX19=="}]}}}}],ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f]}

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cpp_aec_r","cpp_aec_r_g"],Duration:2}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cpp_aec_r"],Duration:2}
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g] cppRandom 28
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 4
execute store result entity @s Offers.Recipes[0].buy.Count byte 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom

scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r] cppRandom 0
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g] cppRandom 15
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2
execute store result entity @s Offers.Recipes[1].buy.Count byte 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r] cppRandom 0

scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g] cppRandom 15
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2
execute store result entity @s Offers.Recipes[2].buy.Count byte 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r] cppRandom 0

scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g] cppRandom 20002
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 4
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 8
execute store result entity @s Offers.Recipes[7].sell.tag.map int 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g] cppRandom 1
execute store result entity @s Offers.Recipes[8].sell.tag.map int 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g] cppRandom 1
execute store result entity @s Offers.Recipes[5].sell.tag.map int 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g] cppRandom 1
execute store result entity @s Offers.Recipes[6].sell.tag.map int 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
kill @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r]
