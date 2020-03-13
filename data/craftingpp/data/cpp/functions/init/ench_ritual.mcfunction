data remove storage cpp:ench_ritual EnchList
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:protection",lvl:4s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:fire_protection",lvl:4s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:feather_falling",lvl:4s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:blast_protection",lvl:4s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:projectile_protection",lvl:4s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:respiration",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:aqua_affinity",lvl:1s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:thorns",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:depth_strider",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:frost_walker",lvl:2s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:sharpness",lvl:5s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:smite",lvl:5s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:bane_of_arthropods",lvl:5s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:knockback",lvl:2s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:fire_aspect",lvl:2s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:looting",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:sweeping",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:efficiency",lvl:5s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:silk_touch",lvl:1s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:unbreaking",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:fortune",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:power",lvl:5s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:punch",lvl:2s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:flame",lvl:1s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:infinity",lvl:1s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:luck_of_the_sea",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:lure",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:loyalty",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:impaling",lvl:5s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:riptide",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:channeling",lvl:1s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:mending",lvl:1s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:piercing",lvl:4s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:quick_charge",lvl:3s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:multishot",lvl:1s}
data modify storage cpp:ench_ritual EnchList append value {id:"minecraft:soul_speed",lvl:3s}

summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:1}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:2}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:3}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:4}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:5}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:6}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:7}
scoreboard players add @e[type=area_effect_cloud,tag=cpp_ench_ritual_init] cppValue 1
scoreboard players add @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,sort=random,limit=6] cppValue 1
scoreboard players add @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=2},sort=random,limit=5] cppValue 1
scoreboard players add @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=3},sort=random,limit=4] cppValue 1
scoreboard players add @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=4},sort=random,limit=3] cppValue 1
scoreboard players add @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=5},sort=random,limit=2] cppValue 1
scoreboard players add @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=6},sort=random,limit=1] cppValue 1
scoreboard players operation #ritual_mat1 cppValue = @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,nbt={Age:1}] cppValue
scoreboard players operation #ritual_mat2 cppValue = @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,nbt={Age:2}] cppValue
scoreboard players operation #ritual_mat3 cppValue = @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,nbt={Age:3}] cppValue
scoreboard players operation #ritual_mat4 cppValue = @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,nbt={Age:4}] cppValue
scoreboard players operation #ritual_mat5 cppValue = @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,nbt={Age:5}] cppValue
scoreboard players operation #ritual_mat6 cppValue = @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,nbt={Age:6}] cppValue
scoreboard players operation #ritual_mat7 cppValue = @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,nbt={Age:7}] cppValue
kill @e[type=area_effect_cloud,tag=cpp_ench_ritual_init]
