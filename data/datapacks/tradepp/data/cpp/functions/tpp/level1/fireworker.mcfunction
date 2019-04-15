tag @s add cpp_tpp_fireworker
data merge entity @s {CustomName:"{\"translate\":\"entity.minecraft.villager.fireworker\"}",ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:12970055}}],ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f],Offers:{Recipes:[{buy:{id:"minecraft:paper",Count:32b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99},{buy:{id:"minecraft:gunpowder",Count:38b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99}]}}

scoreboard players set #random_min cppRandom 24
scoreboard players set #random_max cppRandom 36
function cpp:tpp/random
execute store result entity @s Offers.Recipes[0].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 36
scoreboard players set #random_max cppRandom 40
function cpp:tpp/random
execute store result entity @s Offers.Recipes[1].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players reset @s cppRandom

