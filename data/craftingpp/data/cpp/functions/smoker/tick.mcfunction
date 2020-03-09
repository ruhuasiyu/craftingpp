execute unless block ~ ~ ~ smoker run kill @s
execute as @s[tag=cpp_check_fuel] run function cpp:smoker/fuel_get
execute unless predicate cpp:furnace/outfull if predicate cpp:furnace/smoker run function cpp:smoker/type
