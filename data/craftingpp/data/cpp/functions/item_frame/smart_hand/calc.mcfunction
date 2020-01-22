scoreboard players set #random_min cppValue 5
execute store result score #random_max cppValue run data get entity @s HandItems[0].tag.Enchantments[{id:"minecraft:lure"}].lvl -5
scoreboard players add #random_max cppValue 45
execute if score #random_max cppValue matches ..19 run scoreboard players set #random_max cppValue 20
function cpp:random
scoreboard players operation @s cppTick = #rand cppValue