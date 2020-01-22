execute if block ~ ~-1 ~ minecraft:farmland run function cpp:item_frame/industrious_hand/check_farmland
execute if block ~ ~ ~ #cpp:air if block ~ ~-1 ~ #cpp:tree_plantable run function cpp:item_frame/industrious_hand/check_tree_plantable
execute if block ~ ~ ~ #cpp:air if block ~ ~-1 ~ minecraft:soul_sand run function cpp:item_frame/industrious_hand/check_soul_sand
execute if block ~ ~ ~ #cpp:air if block ~1 ~ ~ #minecraft:jungle_logs run function cpp:item_frame/industrious_hand/check_jungle_logs
execute if block ~ ~ ~ #cpp:air if block ~-1 ~ ~ #minecraft:jungle_logs run function cpp:item_frame/industrious_hand/check_jungle_logs
execute if block ~ ~ ~ #cpp:air if block ~ ~ ~1 #minecraft:jungle_logs run function cpp:item_frame/industrious_hand/check_jungle_logs
execute if block ~ ~ ~ #cpp:air if block ~ ~ ~-1 #minecraft:jungle_logs run function cpp:item_frame/industrious_hand/check_jungle_logs
