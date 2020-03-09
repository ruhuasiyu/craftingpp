scoreboard players set #random_min cppValue 100
execute store result score #random_max cppValue run data get entity @s HandItems[0].tag.Enchantments[{id:"minecraft:lure"}].lvl -100
scoreboard players add #random_max cppValue 900
execute if score #random_max cppValue matches ..399 run scoreboard players set #random_max cppValue 400
function cpp:random
scoreboard players operation @s cppTick = #rand cppValue
