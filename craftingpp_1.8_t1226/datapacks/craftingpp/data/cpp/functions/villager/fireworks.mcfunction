data merge entity @s {CustomName:"烟花师",Career:2,Offers:{Recipes:[{buy:{id:"minecraft:paper",Count:32b},sell:{id:"minecraft:emerald",Count:1b},maxUses:7},{buy:{id:"minecraft:gunpowder",Count:38b},sell:{id:"minecraft:emerald",Count:1b},maxUses:7},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:firework_rocket",Count:4b,tag:{Fireworks:{Flight:3b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[I;123456]},{Flicker:1b,Trail:1b,Type:0b,Colors:[I;123456]}]}}},maxUses:0}]},ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"b7c4c64d-534f-44b1-8926-2cc76c9ec047",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDdjNWMzMzk4Yzg4ZTJiY2FkNzFlNDIyZjQ0MTFhODYzMDVmZmJiZjZhYzUzZjk3YzRmYjk5YTk3MSJ9fX0=="}]}}}}],ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f]}

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cpp_aec_r","cpp_aec_r_g"],Duration:2}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cpp_aec_r"],Duration:2}
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g] cppRandom 28
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 4
execute store result entity @s Offers.Recipes[0].buy.Count byte 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r] cppRandom 0

scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g] cppRandom 34
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 4
execute store result entity @s Offers.Recipes[1].buy.Count byte 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r] cppRandom 0

scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g] cppRandom 2
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2
execute store result entity @s Offers.Recipes[2].sell.Count byte 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r] cppRandom 0

scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 4
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 8
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 16
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 32
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 64
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 128
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 256
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 512
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1024
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2048
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 4096
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 8192
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 16384
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 32768
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 65536
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 131072
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 262144
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 524288
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1048576
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2097152
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 4194304
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 8388608
execute store result entity @s Offers.Recipes[2].sell.tag.Fireworks.Explosions[0].Colors[0] int 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r] cppRandom 0

scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 4
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 8
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 16
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 32
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 64
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 128
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 256
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 512
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1024
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2048
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 4096
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 8192
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 16384
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 32768
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 65536
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 131072
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 262144
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 524288
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 1048576
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 2097152
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 4194304
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r,sort=random,limit=1] cppRandom 8388608
execute store result entity @s Offers.Recipes[2].sell.tag.Fireworks.Explosions[1].Colors[0] int 1 run scoreboard players get @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r_g,limit=1] cppRandom
kill @e[type=minecraft:area_effect_cloud,tag=cpp_aec_r]
