execute unless block ~ ~ ~ blast_furnace run kill @s
execute if block ~ ~ ~ blast_furnace{CookTime:99} run function cpp:furnace/type
execute if block ~ ~ ~ blast_furnace{CookTime:99s} run function cpp:furnace/type
