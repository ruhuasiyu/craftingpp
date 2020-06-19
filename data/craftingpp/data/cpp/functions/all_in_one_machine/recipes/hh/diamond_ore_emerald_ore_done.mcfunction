scoreboard players remove @s cppStoredxp 4
function cpp:all_in_one_machine/recipes/hh/random
execute store result block ~ ~ ~ Items[{Slot:21b,id:"minecraft:diamond"}].Count byte 0.005556 run scoreboard players operation #rand cppValue += #smelt_diamond_emerald cppValue
function cpp:all_in_one_machine/recipes/hh/random
execute store result block ~ ~ ~ Items[{Slot:22b,id:"minecraft:emerald"}].Count byte 0.005556 run scoreboard players operation #rand cppValue += #smelt_emerald_diamond cppValue