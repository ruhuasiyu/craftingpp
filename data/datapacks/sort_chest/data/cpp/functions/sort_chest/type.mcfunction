execute if block ~ ~ ~ #cpp:shulker_box run function cpp:sort_chest/sort
execute if block ~ ~ ~ chest[type=single] run function cpp:sort_chest/sort

execute if block ~ ~ ~ chest[type=left] run summon area_effect_cloud ~ ~ ~ {Tags:["cpp_sort_chest_half"]}
execute if block ~ ~ ~ chest[type=right,facing=east] run summon area_effect_cloud ~ ~ ~-1 {Tags:["cpp_sort_chest_half"]}
execute if block ~ ~ ~ chest[type=right,facing=west] run summon area_effect_cloud ~ ~ ~1 {Tags:["cpp_sort_chest_half"]}
execute if block ~ ~ ~ chest[type=right,facing=south] run summon area_effect_cloud ~1 ~ ~ {Tags:["cpp_sort_chest_half"]}
execute if block ~ ~ ~ chest[type=right,facing=north] run summon area_effect_cloud ~-1 ~ ~ {Tags:["cpp_sort_chest_half"]}

execute if block ~ ~ ~ chest[type=left,facing=east] positioned ~ ~ ~1 run function cpp:sort_chest/sort2
execute if block ~ ~ ~ chest[type=left,facing=west] positioned ~ ~ ~-1 run function cpp:sort_chest/sort2
execute if block ~ ~ ~ chest[type=left,facing=south] positioned ~-1 ~ ~ run function cpp:sort_chest/sort2
execute if block ~ ~ ~ chest[type=left,facing=north] positioned ~1 ~ ~ run function cpp:sort_chest/sort2
execute if block ~ ~ ~ chest[type=right] run function cpp:sort_chest/sort2
