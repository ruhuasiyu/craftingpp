execute unless block ~ ~ ~ furnace run kill @s
execute as @s[tag=cpp_check_fuel] run function cpp:furnace/fuel_get
execute unless predicate cpp:furnace/outfull if predicate cpp:furnace/furnace run function cpp:furnace/type
