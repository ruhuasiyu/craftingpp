tag @s add cpp_tpp_end_envoy
data merge entity @s {CustomName:"{\"translate\":\"entity.minecraft.villager.end_envoy\"}",ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:12970054}}],ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f],Offers:{Recipes:[{buy:{id:"minecraft:chorus_fruit",Count:15b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99},{buy:{id:"minecraft:ender_pearl",Count:15b},sell:{id:"minecraft:emerald",Count:1b},maxUses:99}]}}

scoreboard players set #random_min cppRandom 15
scoreboard players set #random_max cppRandom 19
function cpp:tpp/random
execute store result entity @s Offers.Recipes[0].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 14
scoreboard players set #random_max cppRandom 16
function cpp:tpp/random
execute store result entity @s Offers.Recipes[1].buy.Count byte 1 run scoreboard players get @s cppRandom

