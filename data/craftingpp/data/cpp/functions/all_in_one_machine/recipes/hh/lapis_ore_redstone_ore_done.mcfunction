scoreboard players remove @s cppStoredxp 4
function cpp:all_in_one_machine/recipes/hh/random
execute store result block ~ ~ ~ Items[{Slot:21b,id:"minecraft:lapis_lazuli"}].Count byte 0.03333 run scoreboard players operation #rand cppValue += #smelt_lapis_redstone cppValue
function cpp:all_in_one_machine/recipes/hh/random
execute store result block ~ ~ ~ Items[{Slot:22b,id:"minecraft:redstone"}].Count byte 0.025 run scoreboard players operation #rand cppValue += #smelt_redstone_lapis cppValue