tag @s remove cpp_redstone_powered
execute if block ~ ~-1 ~ #cpp:power_all[powered=true,face=ceiling] run tag @s add cpp_redstone_powered
execute if block ~ ~-1 ~ redstone_torch[lit=true] run tag @s add cpp_redstone_powered
execute if block ~ ~-1 ~ observer[powered=true,face=down] run tag @s add cpp_redstone_powered

execute if block ~ ~1 ~ #cpp:power_all[powered=true,face=floor] run tag @s add cpp_redstone_powered
execute if block ~ ~1 ~ #minecraft:pressure_plates[powered=true] run tag @s add cpp_redstone_powered
execute if block ~ ~1 ~ observer[powered=true,face=up] run tag @s add cpp_redstone_powered

execute if block ~1 ~ ~ #cpp:power_side[powered=true,facing=east] run tag @s add cpp_redstone_powered
execute if block ~-1 ~ ~ #cpp:power_side[powered=true,facing=west] run tag @s add cpp_redstone_powered
execute if block ~ ~ ~1 #cpp:power_side[powered=true,facing=south] run tag @s add cpp_redstone_powered
execute if block ~ ~ ~-1 #cpp:power_side[powered=true,facing=north] run tag @s add cpp_redstone_powered
