execute if block ~ ~1 ~ dirt run loot spawn ~ ~1 ~ loot cpp:block_breaker/dirt
execute if block ~ ~1 ~ gravel run loot spawn ~ ~1 ~ loot cpp:block_breaker/gravel
execute if block ~ ~1 ~ sand run loot spawn ~ ~1 ~ loot cpp:block_breaker/sand
execute if block ~ ~1 ~ soul_sand run loot spawn ~ ~1 ~ loot cpp:block_breaker/soul_sand
execute if block ~ ~1 ~ #cpp:block_breaker_blocks_clear run setblock ~ ~1 ~ air
execute if block ~ ~1 ~ stone run setblock ~ ~1 ~ gravel
execute if block ~ ~1 ~ cobblestone run setblock ~ ~1 ~ sand
execute if block ~ ~1 ~ soul_soil run setblock ~ ~1 ~ soul_sand
