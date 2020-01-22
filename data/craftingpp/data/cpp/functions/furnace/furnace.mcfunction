execute unless block ~ ~ ~ furnace run kill @s
execute if block ~ ~ ~ furnace{CookTime:199s} run function cpp:furnace/type
# for Forge
execute if block ~ ~ ~ furnace{CookTime:199} run function cpp:furnace/type
