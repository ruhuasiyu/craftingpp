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

summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:0}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:1}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:2}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:3}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:4}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:5}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:6}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:7}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:8}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:9}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:10}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:11}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:12}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:13}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:14}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:15}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:16}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:17}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:18}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:19}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:20}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:21}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:22}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:23}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:24}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:25}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:26}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:27}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:28}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:29}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:30}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_ench_ritual_init"],Age:31}

scoreboard players set @e[type=area_effect_cloud,tag=cpp_ench_ritual_init] cppValue 32

scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=32},sort=random,limit=31] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=31},sort=random,limit=30] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=30},sort=random,limit=29] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=29},sort=random,limit=28] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=28},sort=random,limit=27] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=27},sort=random,limit=26] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=26},sort=random,limit=25] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=25},sort=random,limit=24] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=24},sort=random,limit=23] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=23},sort=random,limit=22] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=22},sort=random,limit=21] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=21},sort=random,limit=20] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=20},sort=random,limit=19] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=19},sort=random,limit=18] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=18},sort=random,limit=17] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=17},sort=random,limit=16] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=16},sort=random,limit=15] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=15},sort=random,limit=14] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=14},sort=random,limit=13] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=13},sort=random,limit=12] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=12},sort=random,limit=11] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=11},sort=random,limit=10] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=10},sort=random,limit=9] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=9},sort=random,limit=8] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=8},sort=random,limit=7] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=7},sort=random,limit=6] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=6},sort=random,limit=5] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=5},sort=random,limit=4] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=4},sort=random,limit=3] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=3},sort=random,limit=2] cppValue 1
scoreboard players remove @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=2},sort=random,limit=1] cppValue 1

data modify storage cpp:ench_ritual EnchList[0].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=32},limit=1] Age
data modify storage cpp:ench_ritual EnchList[1].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=1},limit=1] Age
data modify storage cpp:ench_ritual EnchList[2].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=2},limit=1] Age
data modify storage cpp:ench_ritual EnchList[3].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=3},limit=1] Age
data modify storage cpp:ench_ritual EnchList[4].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=4},limit=1] Age
data modify storage cpp:ench_ritual EnchList[5].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=5},limit=1] Age
data modify storage cpp:ench_ritual EnchList[6].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=6},limit=1] Age
data modify storage cpp:ench_ritual EnchList[7].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=7},limit=1] Age
data modify storage cpp:ench_ritual EnchList[8].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=8},limit=1] Age
data modify storage cpp:ench_ritual EnchList[9].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=9},limit=1] Age
data modify storage cpp:ench_ritual EnchList[10].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=10},limit=1] Age
data modify storage cpp:ench_ritual EnchList[11].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=11},limit=1] Age
data modify storage cpp:ench_ritual EnchList[12].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=12},limit=1] Age
data modify storage cpp:ench_ritual EnchList[13].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=13},limit=1] Age
data modify storage cpp:ench_ritual EnchList[14].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=14},limit=1] Age
data modify storage cpp:ench_ritual EnchList[15].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=15},limit=1] Age
data modify storage cpp:ench_ritual EnchList[16].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=16},limit=1] Age
data modify storage cpp:ench_ritual EnchList[17].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=17},limit=1] Age
data modify storage cpp:ench_ritual EnchList[18].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=18},limit=1] Age
data modify storage cpp:ench_ritual EnchList[19].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=19},limit=1] Age
data modify storage cpp:ench_ritual EnchList[20].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=20},limit=1] Age
data modify storage cpp:ench_ritual EnchList[21].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=21},limit=1] Age
data modify storage cpp:ench_ritual EnchList[22].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=22},limit=1] Age
data modify storage cpp:ench_ritual EnchList[23].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=23},limit=1] Age
data modify storage cpp:ench_ritual EnchList[24].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=24},limit=1] Age
data modify storage cpp:ench_ritual EnchList[25].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=25},limit=1] Age
data modify storage cpp:ench_ritual EnchList[26].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=26},limit=1] Age
data modify storage cpp:ench_ritual EnchList[27].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=27},limit=1] Age
data modify storage cpp:ench_ritual EnchList[28].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=28},limit=1] Age
data modify storage cpp:ench_ritual EnchList[29].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=29},limit=1] Age
data modify storage cpp:ench_ritual EnchList[30].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=30},limit=1] Age
data modify storage cpp:ench_ritual EnchList[31].index set from entity @e[type=area_effect_cloud,tag=cpp_ench_ritual_init,scores={cppValue=31},limit=1] Age

kill @e[type=area_effect_cloud,tag=cpp_ench_ritual_init]
