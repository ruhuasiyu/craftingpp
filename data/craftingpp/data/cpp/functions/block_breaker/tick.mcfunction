execute as @s[tag=cpp_piston_head] unless block ~ ~-1 ~ minecraft:piston_head if block ~ ~1 ~ #cpp:block_breaker_blocks run function cpp:block_breaker/done
tag @s remove cpp_piston_head
execute if block ~ ~-1 ~ piston_head run tag @s add cpp_piston_head
execute unless block ~ ~ ~ minecraft:furnace run function cpp:block_breaker/break

execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:cauldron if entity @e[type=item,distance=..1,nbt={Item:{Count:4b}}] run function cpp:block_breaker/cauldron
execute as @s[tag=cpp_bsd_lava] at @s run function cpp:block_breaker/lava_tick
execute as @s[tag=cpp_bsd_water] at @s run function cpp:block_breaker/water_tick
