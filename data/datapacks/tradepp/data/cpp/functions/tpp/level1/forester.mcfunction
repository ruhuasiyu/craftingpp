tag @s add cpp_tpp_forester
data merge entity @s {CustomName:"{\"translate\":\"entity.minecraft.villager.forester\"}",ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:12970051}}],ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f],Offers:{Recipes:[{buy:{id:"minecraft:oak_log",Count:36b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99},{buy:{id:"minecraft:spruce_log",Count:36b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99},{buy:{id:"minecraft:birch_log",Count:36b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99},{buy:{id:"minecraft:jungle_log",Count:36b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99},{buy:{id:"minecraft:acacia_log",Count:36b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99},{buy:{id:"minecraft:dark_oak_log",Count:36b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99}]}}

scoreboard players set #random_min cppRandom 28
scoreboard players set #random_max cppRandom 32
function cpp:tpp/random
execute store result entity @s Offers.Recipes[0].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 28
scoreboard players set #random_max cppRandom 32
function cpp:tpp/random
execute store result entity @s Offers.Recipes[1].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 28
scoreboard players set #random_max cppRandom 32
function cpp:tpp/random
execute store result entity @s Offers.Recipes[2].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 28
scoreboard players set #random_max cppRandom 32
function cpp:tpp/random
execute store result entity @s Offers.Recipes[3].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 28
scoreboard players set #random_max cppRandom 32
function cpp:tpp/random
execute store result entity @s Offers.Recipes[4].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 28
scoreboard players set #random_max cppRandom 32
function cpp:tpp/random
execute store result entity @s Offers.Recipes[5].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players reset @s cppRandom
