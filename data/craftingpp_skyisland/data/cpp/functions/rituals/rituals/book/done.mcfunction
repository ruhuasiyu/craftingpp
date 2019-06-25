tellraw @p {"translate":"info.cpp.rituals.finish"}
data remove block ~ ~-1 ~ Items
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
tag @s remove cpp_rituals_item

tag @s add cpp_random_target
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_random_target"]}
scoreboard players operation @s cppRandom = #cpp_ritual_type cppValue
scoreboard players remove @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 1
scoreboard players remove @e[tag=cpp_random_target,sort=random,limit=1] cppRandom 2
kill @e[type=area_effect_cloud,tag=cpp_random_target]
tag @s remove cpp_random_target

scoreboard players operation @s[scores={cppRandom=1}] cppEnchid = #ench1 cppEnchid
scoreboard players operation @s[scores={cppRandom=2}] cppEnchid = #ench2 cppEnchid
scoreboard players operation @s[scores={cppRandom=3}] cppEnchid = #ench3 cppEnchid
scoreboard players operation @s[scores={cppRandom=4}] cppEnchid = #ench4 cppEnchid
scoreboard players operation @s[scores={cppRandom=5}] cppEnchid = #ench5 cppEnchid
scoreboard players operation @s[scores={cppRandom=6}] cppEnchid = #ench6 cppEnchid
scoreboard players operation @s[scores={cppRandom=7}] cppEnchid = #ench7 cppEnchid
scoreboard players operation @s[scores={cppRandom=8}] cppEnchid = #ench8 cppEnchid
scoreboard players operation @s[scores={cppRandom=9}] cppEnchid = #ench9 cppEnchid
scoreboard players operation @s[scores={cppRandom=10}] cppEnchid = #ench10 cppEnchid
scoreboard players operation @s[scores={cppRandom=11}] cppEnchid = #ench11 cppEnchid
scoreboard players operation @s[scores={cppRandom=12}] cppEnchid = #ench12 cppEnchid
scoreboard players operation @s[scores={cppRandom=13}] cppEnchid = #ench13 cppEnchid
scoreboard players operation @s[scores={cppRandom=14}] cppEnchid = #ench14 cppEnchid
scoreboard players operation @s[scores={cppRandom=15}] cppEnchid = #ench15 cppEnchid
scoreboard players operation @s[scores={cppRandom=16}] cppEnchid = #ench16 cppEnchid
scoreboard players operation @s[scores={cppRandom=17}] cppEnchid = #ench17 cppEnchid
scoreboard players operation @s[scores={cppRandom=18}] cppEnchid = #ench18 cppEnchid
scoreboard players operation @s[scores={cppRandom=19}] cppEnchid = #ench19 cppEnchid
scoreboard players operation @s[scores={cppRandom=20}] cppEnchid = #ench20 cppEnchid
scoreboard players operation @s[scores={cppRandom=21}] cppEnchid = #ench21 cppEnchid
scoreboard players operation @s[scores={cppRandom=22}] cppEnchid = #ench22 cppEnchid
scoreboard players operation @s[scores={cppRandom=23}] cppEnchid = #ench23 cppEnchid
scoreboard players operation @s[scores={cppRandom=24}] cppEnchid = #ench24 cppEnchid
scoreboard players operation @s[scores={cppRandom=25}] cppEnchid = #ench25 cppEnchid
scoreboard players operation @s[scores={cppRandom=26}] cppEnchid = #ench26 cppEnchid
scoreboard players operation @s[scores={cppRandom=27}] cppEnchid = #ench27 cppEnchid
scoreboard players operation @s[scores={cppRandom=28}] cppEnchid = #ench28 cppEnchid
scoreboard players operation @s[scores={cppRandom=29}] cppEnchid = #ench29 cppEnchid
scoreboard players operation @s[scores={cppRandom=30}] cppEnchid = #ench30 cppEnchid
scoreboard players operation @s[scores={cppRandom=31}] cppEnchid = #ench31 cppEnchid
scoreboard players operation @s[scores={cppRandom=32}] cppEnchid = #ench32 cppEnchid

data merge entity @s {Item:{id:"minecraft:enchanted_book",Count:1b}}
data merge entity @s[scores={cppEnchid=0}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:4s}]}}}
data merge entity @s[scores={cppEnchid=1}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:fire_protection",lvl:4s}]}}}
data merge entity @s[scores={cppEnchid=2}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:feather_falling",lvl:4s}]}}}
data merge entity @s[scores={cppEnchid=3}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:blast_protection",lvl:4s}]}}}
data merge entity @s[scores={cppEnchid=4}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:projectile_protection",lvl:4s}]}}}
data merge entity @s[scores={cppEnchid=5}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:respiration",lvl:3s}]}}}
data merge entity @s[scores={cppEnchid=6}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:aqua_affinity",lvl:1s}]}}}
data merge entity @s[scores={cppEnchid=7}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:thorns",lvl:3s}]}}}
data merge entity @s[scores={cppEnchid=8}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:depth_strider",lvl:3s}]}}}
data merge entity @s[scores={cppEnchid=9}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:frost_walker",lvl:2s}]}}}
data merge entity @s[scores={cppEnchid=10}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:sharpness",lvl:5s}]}}}
data merge entity @s[scores={cppEnchid=11}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:smite",lvl:5s}]}}}
data merge entity @s[scores={cppEnchid=12}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:bane_of_arthropods",lvl:5s}]}}}
data merge entity @s[scores={cppEnchid=13}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:knockback",lvl:2s}]}}}
data merge entity @s[scores={cppEnchid=14}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:fire_aspect",lvl:2s}]}}}
data merge entity @s[scores={cppEnchid=15}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:looting",lvl:3s}]}}}
data merge entity @s[scores={cppEnchid=16}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:sweeping",lvl:3s}]}}}
data merge entity @s[scores={cppEnchid=17}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:efficiency",lvl:5s}]}}}
data merge entity @s[scores={cppEnchid=18}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:silk_touch",lvl:1s}]}}}
data merge entity @s[scores={cppEnchid=19}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}
data merge entity @s[scores={cppEnchid=20}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:fortune",lvl:3s}]}}}
data merge entity @s[scores={cppEnchid=21}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:power",lvl:5s}]}}}
data merge entity @s[scores={cppEnchid=22}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:punch",lvl:2s}]}}}
data merge entity @s[scores={cppEnchid=23}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:flame",lvl:1s}]}}}
data merge entity @s[scores={cppEnchid=24}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:infinity",lvl:1s}]}}}
data merge entity @s[scores={cppEnchid=25}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:luck_of_the_sea",lvl:3s}]}}}
data merge entity @s[scores={cppEnchid=26}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:lure",lvl:3s}]}}}
data merge entity @s[scores={cppEnchid=27}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:loyalty",lvl:3s}]}}}
data merge entity @s[scores={cppEnchid=28}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:impaling",lvl:5s}]}}}
data merge entity @s[scores={cppEnchid=29}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:riptide",lvl:3s}]}}}
data merge entity @s[scores={cppEnchid=30}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:channeling",lvl:1s}]}}}
data merge entity @s[scores={cppEnchid=31}] {Item:{tag:{StoredEnchantments:[{id:"minecraft:mending",lvl:1s}]}}}

scoreboard players reset @s cppRandom
