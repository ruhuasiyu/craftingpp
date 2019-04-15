data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:36b},sell:{id:"minecraft:shulker_box",Count:1b},maxUses:99}

scoreboard players set #random_min cppRandom 16
scoreboard players set #random_max cppRandom 20
function cpp:tpp/random
execute store result entity @s Offers.Recipes[2].buy.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players reset @s cppRandom
