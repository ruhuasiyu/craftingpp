scoreboard players remove @s cppStoredxp 4
scoreboard players set #random_min random 0
scoreboard players set #random_max random 180
function random:random
execute store result block ~ ~ ~ Items[{Slot:21b,id:"minecraft:gold_ingot"}].Count byte 0.005556 run scoreboard players operation #result random += #smelt_gold_diamond cppValue
scoreboard players set #random_min random 0
scoreboard players set #random_max random 180
function random:random
execute store result block ~ ~ ~ Items[{Slot:22b,id:"minecraft:diamond"}].Count byte 0.005556 run scoreboard players operation #result random += #smelt_diamond_gold cppValue