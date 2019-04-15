data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:piston",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:redstone_lamp",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:tnt",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:observer",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:dropper",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:dispenser",Count:1b},maxUses:99}

scoreboard players set #random_min cppRandom 4
scoreboard players set #random_max cppRandom 6
function cpp:tpp/random
execute store result entity @s Offers.Recipes[3].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 4
scoreboard players set #random_max cppRandom 6
function cpp:tpp/random
execute store result entity @s Offers.Recipes[4].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 4
scoreboard players set #random_max cppRandom 6
function cpp:tpp/random
execute store result entity @s Offers.Recipes[5].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 4
scoreboard players set #random_max cppRandom 6
function cpp:tpp/random
execute store result entity @s Offers.Recipes[6].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 4
scoreboard players set #random_max cppRandom 6
function cpp:tpp/random
execute store result entity @s Offers.Recipes[7].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 4
scoreboard players set #random_max cppRandom 6
function cpp:tpp/random
execute store result entity @s Offers.Recipes[8].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players reset @s cppRandom
