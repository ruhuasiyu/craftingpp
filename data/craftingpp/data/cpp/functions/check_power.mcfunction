tag @s remove cpp_redstone_powered
execute if block ~ ~-1 ~ #cpp:lever_and_buttons[powered=true,face=ceiling] run tag @s add cpp_redstone_powered
execute if block ~ ~-1 ~ #cpp:redstone_torches[lit=true] run tag @s add cpp_redstone_powered
execute if block ~ ~-1 ~ observer[powered=true,facing=down] run tag @s add cpp_redstone_powered

execute if block ~ ~1 ~ #cpp:lever_and_buttons[powered=true,face=floor] run tag @s add cpp_redstone_powered
execute if block ~ ~1 ~ #cpp:pressure_plates[powered=true] run tag @s add cpp_redstone_powered
execute if block ~ ~1 ~ observer[powered=true,facing=up] run tag @s add cpp_redstone_powered

execute if block ~1 ~ ~ #cpp:lever_and_buttons[powered=true,face=wall,facing=east] run tag @s add cpp_redstone_powered
execute if block ~-1 ~ ~ #cpp:lever_and_buttons[powered=true,face=wall,facing=west] run tag @s add cpp_redstone_powered
execute if block ~ ~ ~1 #cpp:lever_and_buttons[powered=true,face=wall,facing=south] run tag @s add cpp_redstone_powered
execute if block ~ ~ ~-1 #cpp:lever_and_buttons[powered=true,face=wall,facing=north] run tag @s add cpp_redstone_powered

execute if block ~1 ~ ~ #cpp:power_side[powered=true,facing=east] run tag @s add cpp_redstone_powered
execute if block ~-1 ~ ~ #cpp:power_side[powered=true,facing=west] run tag @s add cpp_redstone_powered
execute if block ~ ~ ~1 #cpp:power_side[powered=true,facing=south] run tag @s add cpp_redstone_powered
execute if block ~ ~ ~-1 #cpp:power_side[powered=true,facing=north] run tag @s add cpp_redstone_powered
