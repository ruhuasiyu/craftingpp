data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:red_tulip",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:orange_tulip",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:white_tulip",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:pink_tulip",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:sunflower",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:lilac",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:rose_bush",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:peony",Count:1b},maxUses:99}

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 5
function cpp:tpp/random
execute store result entity @s Offers.Recipes[1].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 5
function cpp:tpp/random
execute store result entity @s Offers.Recipes[2].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 5
function cpp:tpp/random
execute store result entity @s Offers.Recipes[3].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 5
function cpp:tpp/random
execute store result entity @s Offers.Recipes[4].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 11
function cpp:tpp/random
execute store result entity @s Offers.Recipes[5].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 11
function cpp:tpp/random
execute store result entity @s Offers.Recipes[6].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 11
function cpp:tpp/random
execute store result entity @s Offers.Recipes[7].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 11
function cpp:tpp/random
execute store result entity @s Offers.Recipes[8].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players reset @s cppRandom
