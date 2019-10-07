scoreboard players set #random_min random 100
execute store result score #random_max random run data get entity @s HandItems[0].tag.Enchantments[{id:"minecraft:lure"}].lvl -100
scoreboard players add #random_max random 900
execute if score #random_max random matches ..399 run scoreboard players set #random_max random 400
function random:random
scoreboard players operation @s cppTick = #result random