execute as @s[tag=cpp_piston_head] unless block ~ ~-1 ~ piston_head if block ~ ~1 ~ #cpp:block_breaker_blocks run function cpp:bsd/block_breaker/done
tag @s remove cpp_piston_head
execute if block ~ ~-1 ~ piston_head run tag @s add cpp_piston_head
