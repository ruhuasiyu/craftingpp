scoreboard players remove @s cppStoredxp 4
scoreboard players set #random_min random 0
scoreboard players set #random_max random 180
function random:random
execute store result block ~ ~ ~ Items[{Slot:21b,id:"minecraft:quartz"}].Count byte 0.005556 run scoreboard players operation #result random += #smelt_nether_quartz_redstone cppValue
scoreboard players set #random_min random 0
scoreboard players set #random_max random 180
function random:random
execute store result block ~ ~ ~ Items[{Slot:22b,id:"minecraft:redstone"}].Count byte 0.025 run scoreboard players operation #result random += #smelt_redstone_nether_quartz cppValue