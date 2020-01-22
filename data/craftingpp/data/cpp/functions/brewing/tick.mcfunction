execute unless block ~ ~ ~ minecraft:brewing_stand run kill @s
execute if block ~ ~ ~ minecraft:brewing_stand{BrewTime:1s} if predicate cpp:brewing/type run function cpp:brewing/done
