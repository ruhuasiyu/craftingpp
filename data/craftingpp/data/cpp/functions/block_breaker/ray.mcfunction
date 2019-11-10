execute if entity @s[distance=..6] unless block ~ ~ ~ furnace positioned ^ ^ ^0.005 anchored feet run function cpp:block_breaker/ray
execute if entity @s[distance=..6] if block ~ ~ ~ furnace{Lock:"zsx<3wtt"} if block ~ ~1 ~ #cpp:block_breaker_blocks run function cpp:block_breaker/done
scoreboard players reset @s cppBsdIntFur