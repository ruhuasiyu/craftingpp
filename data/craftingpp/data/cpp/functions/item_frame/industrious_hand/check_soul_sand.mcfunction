scoreboard players set @s cppValue 0
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:nether_wart"}] run scoreboard players set @s cppValue 21
execute as @s[scores={cppValue=23}] run function cpp:item_frame/industrious_hand/done21
