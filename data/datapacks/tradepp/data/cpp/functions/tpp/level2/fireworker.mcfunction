data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:firework_rocket",Count:4b,tag:{Fireworks:{Flight:3b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[I;123456]},{Flicker:1b,Trail:1b,Type:0b,Colors:[I;123456]}]}}},maxUses:99}

scoreboard players set #random_min cppRandom 3
scoreboard players set #random_max cppRandom 5
function cpp:tpp/random
execute store result entity @s Offers.Recipes[2].sell.Count byte 1 run scoreboard players get @s cppRandom

scoreboard players set #random_min cppRandom 0
scoreboard players set #random_max cppRandom 16777216
function cpp:tpp/random
execute store result entity @s Offers.Recipes[2].sell.tag.Fireworks.Explosions[0].Colors[0] int 1 run scoreboard players get @s cppRandom
scoreboard players set #random_min cppRandom 0
scoreboard players set #random_max cppRandom 16777216
function cpp:tpp/random
execute store result entity @s Offers.Recipes[2].sell.tag.Fireworks.Explosions[1].Colors[0] int 1 run scoreboard players get @s cppRandom

scoreboard players reset @s cppRandom
