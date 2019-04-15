tag @s add cpp_tpp_frogman
data merge entity @s {CustomName:"{\"translate\":\"entity.minecraft.villager.frogman\"}",ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:12970058}}],ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f],Offers:{Recipes:[{buy:{id:"minecraft:seagrass",Count:15b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99},{buy:{id:"minecraft:kelp",Count:15b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99},{buy:{id:"minecraft:prismarine_crystals",Count:36b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99}]}}

scoreboard players set #random_min cppRandom 30
scoreboard players set #random_max cppRandom 38
function cpp:tpp/random
execute store result entity @s Offers.Recipes[0].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 30
scoreboard players set #random_max cppRandom 38
function cpp:tpp/random
execute store result entity @s Offers.Recipes[1].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 36
scoreboard players set #random_max cppRandom 40
function cpp:tpp/random
execute store result entity @s Offers.Recipes[2].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players reset @s cppRandom
