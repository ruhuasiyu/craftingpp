execute store result score @s cppSlotsDown run data get block ~ ~ ~ Items
execute if block ~ ~ ~ #cpp:droppers run scoreboard players add @s cppSlotsDown 18
execute if block ~ ~ ~ hopper run scoreboard players add @s cppSlotsDown 22
execute unless block ~ ~ ~ #cpp:container run scoreboard players set @s cppSlotsDown 27
execute as @s[scores={cppSlotsDown=..25}] run function cpp:item_processer/to_chest_double
execute as @s[scores={cppSlotsDown=26..}] if block ~ ~ ~ #cpp:chests[type=right,facing=east] positioned ~ ~ ~-1 run function cpp:item_processer/to_chest_double
execute as @s[scores={cppSlotsDown=26..}] if block ~ ~ ~ #cpp:chests[type=right,facing=west] positioned ~ ~ ~1 run function cpp:item_processer/to_chest_double
execute as @s[scores={cppSlotsDown=26..}] if block ~ ~ ~ #cpp:chests[type=right,facing=south] positioned ~1 ~ ~ run function cpp:item_processer/to_chest_double
execute as @s[scores={cppSlotsDown=26..}] if block ~ ~ ~ #cpp:chests[type=right,facing=north] positioned ~-1 ~ ~ run function cpp:item_processer/to_chest_double
execute as @s[scores={cppSlotsDown=26..}] if block ~ ~ ~ #cpp:chests[type=left,facing=east] positioned ~ ~ ~1 run function cpp:item_processer/to_chest_double
execute as @s[scores={cppSlotsDown=26..}] if block ~ ~ ~ #cpp:chests[type=left,facing=west] positioned ~ ~ ~-1 run function cpp:item_processer/to_chest_double
execute as @s[scores={cppSlotsDown=26..}] if block ~ ~ ~ #cpp:chests[type=left,facing=south] positioned ~-1 ~ ~ run function cpp:item_processer/to_chest_double
execute as @s[scores={cppSlotsDown=26..}] if block ~ ~ ~ #cpp:chests[type=left,facing=north] positioned ~1 ~ ~ run function cpp:item_processer/to_chest_double
