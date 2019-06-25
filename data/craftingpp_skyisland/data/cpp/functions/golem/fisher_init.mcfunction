scoreboard players set #random_min cppRandom 100
execute store result score #random_max cppRandom run data get entity @s HandItems[0].tag.Enchantments[{id:"minecraft:lure"}].lvl -100
scoreboard players add #random_max cppRandom 900
function cpp:random
scoreboard players operation @s cppTick = @s cppRandom
