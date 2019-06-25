execute unless block ~ ~ ~ brewing_stand run kill @s
execute if block ~ ~ ~ brewing_stand{BrewTime:1s} run function cpp:brewing_stand/type
