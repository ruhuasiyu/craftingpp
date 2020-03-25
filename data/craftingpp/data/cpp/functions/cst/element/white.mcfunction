advancement grant @s only cpp:elements
scoreboard players set @s cppValue 0
execute if block ~ ~-1 ~ dirt run scoreboard players set @s cppValue 1
execute if block ~ ~-1 ~ grass_block run scoreboard players set @s cppValue 2
execute if block ~ ~-1 ~ stone run scoreboard players set @s cppValue 3
execute if block ~ ~-1 ~ sand run scoreboard players set @s cppValue 4
execute if block ~ ~-1 ~ gravel run scoreboard players set @s cppValue 5
execute if block ~ ~-1 ~ podzol run scoreboard players set @s cppValue 6
execute if block ~ ~-1 ~ water run scoreboard players set @s cppValue 7
execute if block ~ ~-1 ~ ice run scoreboard players set @s cppValue 8
execute if block ~ ~-1 ~ lava run scoreboard players set @s cppValue 9
execute if block ~ ~-1 ~ obsidian run scoreboard players set @s cppValue 10
execute if block ~ ~-1 ~ netherrack run scoreboard players set @s cppValue 11
execute if block ~ ~-1 ~ crimson_nylium run scoreboard players set @s cppValue 12
execute if block ~ ~-1 ~ warped_nylium run scoreboard players set @s cppValue 13
execute if block ~ ~-1 ~ end_stone run scoreboard players set @s cppValue 14
execute if block ~ ~-1 ~ mycelium run scoreboard players set @s cppValue 15

execute as @s[scores={cppValue=1}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 grass_block replace dirt
execute as @s[scores={cppValue=2}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 stone replace grass_block
execute as @s[scores={cppValue=3}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 sand replace stone
execute as @s[scores={cppValue=4}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 gravel replace sand
execute as @s[scores={cppValue=5}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 podzol replace gravel
execute as @s[scores={cppValue=6}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 mycelium replace podzol
execute as @s[scores={cppValue=7}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 ice replace water
execute as @s[scores={cppValue=8}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 water replace ice
execute as @s[scores={cppValue=9}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 obsidian replace lava
execute as @s[scores={cppValue=10}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 lava replace obsidian
execute as @s[scores={cppValue=11}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 crimson_nylium replace netherrack
execute as @s[scores={cppValue=12}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 warped_nylium replace crimson_nylium
execute as @s[scores={cppValue=13}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 end_stone replace warped_nylium
execute as @s[scores={cppValue=14}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 netherrack replace end_stone
execute as @s[scores={cppValue=15}] run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 dirt replace mycelium
