data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:oak_sapling",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:spruce_sapling",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:birch_sapling",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:jungle_sapling",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:acacia_sapling",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:dark_oak_sapling",Count:1b},maxUses:99}

scoreboard players set #random_min cppRandom 2
scoreboard players set #random_max cppRandom 4
function cpp:tpp/random
execute store result entity @s Offers.Recipes[6].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 2
scoreboard players set #random_max cppRandom 4
function cpp:tpp/random
execute store result entity @s Offers.Recipes[7].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 2
scoreboard players set #random_max cppRandom 4
function cpp:tpp/random
execute store result entity @s Offers.Recipes[8].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 2
scoreboard players set #random_max cppRandom 4
function cpp:tpp/random
execute store result entity @s Offers.Recipes[9].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 2
scoreboard players set #random_max cppRandom 4
function cpp:tpp/random
execute store result entity @s Offers.Recipes[10].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 2
scoreboard players set #random_max cppRandom 4
function cpp:tpp/random
execute store result entity @s Offers.Recipes[11].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players reset @s cppRandom
