execute if block ~ ~-1 ~ furnace unless block ~ ~-1 ~ furnace{CustomName:'{"translate":"item.cpp.block_breaker"}',Lock:"zsx<3wtt"} run function cpp:block/snow_block/block_breaker
execute if block ~ ~-1 ~ composter positioned ~0.5 ~-1 ~0.5 unless entity @e[type=armor_stand,tag=cpp_fermenter,distance=..0.1] run function cpp:block/snow_block/fermenter
