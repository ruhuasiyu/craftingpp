execute if block ~ ~-1 ~ furnace positioned ~0.5 ~-1 ~0.5 unless entity @e[type=armor_stand,tag=cpp_block_breaker,distance=..0.1] run function cpp:block/skyisland/block_breaker
execute if block ~ ~-1 ~ composter positioned ~0.5 ~-1 ~0.5 unless entity @e[type=armor_stand,tag=cpp_fermenter,distance=..0.1] run function cpp:block/skyisland/fermenter
kill @e[type=area_effect_cloud,distance=..2,tag=cpp_loc_block_pos]
