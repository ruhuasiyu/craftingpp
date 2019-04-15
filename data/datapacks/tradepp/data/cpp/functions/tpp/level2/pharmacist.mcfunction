data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:potion",Count:1b,tag:{CustomPotionEffects:[{Id:1b,Amplifier:0b,Duration:600}]}},maxUses:99}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:1b,Amplifier:0b,Duration:600}]}},maxUses:99}

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 11
function cpp:tpp/random
execute store result entity @s Offers.Recipes[4].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 11
function cpp:tpp/random
execute store result entity @s Offers.Recipes[5].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 1
scoreboard players set #random_max cppRandom 27
function cpp:tpp/random
execute store result entity @s Offers.Recipes[4].sell.tag.CustomPotionEffects[0].Id byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 1
scoreboard players set #random_max cppRandom 27
function cpp:tpp/random
execute store result entity @s Offers.Recipes[5].sell.tag.CustomPotionEffects[0].Id byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 1
scoreboard players set #random_max cppRandom 48
function cpp:tpp/random
execute store result entity @s Offers.Recipes[4].sell.tag.CustomPotionEffects[0].Duration int 200 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 1
scoreboard players set #random_max cppRandom 48
function cpp:tpp/random
execute store result entity @s Offers.Recipes[5].sell.tag.CustomPotionEffects[0].Duration int 200 run scoreboard players get @s cppRandom

scoreboard players reset @s cppRandom
