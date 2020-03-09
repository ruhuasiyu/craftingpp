execute unless block ~ ~ ~ blast_furnace run kill @s
execute as @s[tag=cpp_check_fuel] run function cpp:blast_furnace/fuel_get
execute unless predicate cpp:furnace/outfull if predicate cpp:furnace/blast_furnace run function cpp:blast_furnace/type
