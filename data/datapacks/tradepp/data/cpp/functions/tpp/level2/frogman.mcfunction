data modify entity @s Offers.Recipes append value {buyB:{id:"minecraft:emerald",Count:4b},buy:{id:"minecraft:cod",Count:1b},sell:{id:"minecraft:cod_bucket",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buyB:{id:"minecraft:emerald",Count:4b},buy:{id:"minecraft:salmon",Count:1b},sell:{id:"minecraft:salmon_bucket",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buyB:{id:"minecraft:emerald",Count:4b},buy:{id:"minecraft:tropical_fish",Count:1b},sell:{id:"minecraft:tropical_fish_bucket",Count:1b},maxUses:99}
data modify entity @s Offers.Recipes append value {buyB:{id:"minecraft:emerald",Count:4b},buy:{id:"minecraft:pufferfish",Count:1b},sell:{id:"minecraft:pufferfish_bucket",Count:1b},maxUses:99}

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 5
function cpp:tpp/random
execute store result entity @s Offers.Recipes[3].buyB.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 5
function cpp:tpp/random
execute store result entity @s Offers.Recipes[4].buyB.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 5
function cpp:tpp/random
execute store result entity @s Offers.Recipes[5].buyB.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 5
function cpp:tpp/random
execute store result entity @s Offers.Recipes[6].buyB.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players reset @s cppRandom
