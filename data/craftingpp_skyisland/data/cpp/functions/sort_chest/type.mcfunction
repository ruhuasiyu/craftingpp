function cpp:sort_chest/sort

execute if block ~ ~ ~ chest[type=left] run summon armor_stand ~ ~ ~ {Tags:["cpp_sort_chest_half"],HandItems:[{id:"minecraft:firework_star",Count:1b},{}]}
execute if block ~ ~ ~ chest[type=right,facing=east] run summon armor_stand ~ ~ ~-1 {Tags:["cpp_sort_chest_half"],HandItems:[{id:"minecraft:firework_star",Count:1b},{}]}
execute if block ~ ~ ~ chest[type=right,facing=west] run summon armor_stand ~ ~ ~1 {Tags:["cpp_sort_chest_half"],HandItems:[{id:"minecraft:firework_star",Count:1b},{}]}
execute if block ~ ~ ~ chest[type=right,facing=south] run summon armor_stand ~1 ~ ~ {Tags:["cpp_sort_chest_half"],HandItems:[{id:"minecraft:firework_star",Count:1b},{}]}
execute if block ~ ~ ~ chest[type=right,facing=north] run summon armor_stand ~-1 ~ ~ {Tags:["cpp_sort_chest_half"],HandItems:[{id:"minecraft:firework_star",Count:1b},{}]}

execute if block ~ ~ ~ chest[type=left,facing=east] positioned ~ ~ ~1 run function cpp:sort_chest/sort2
execute if block ~ ~ ~ chest[type=left,facing=west] positioned ~ ~ ~-1 run function cpp:sort_chest/sort2
execute if block ~ ~ ~ chest[type=left,facing=south] positioned ~-1 ~ ~ run function cpp:sort_chest/sort2
execute if block ~ ~ ~ chest[type=left,facing=north] positioned ~1 ~ ~ run function cpp:sort_chest/sort2
execute if block ~ ~ ~ chest[type=right] run function cpp:sort_chest/sort2

kill @e[type=armor_stand,tag=cpp_sort_chest_half,distance=..2]
