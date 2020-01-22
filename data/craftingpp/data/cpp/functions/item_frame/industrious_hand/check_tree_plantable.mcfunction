scoreboard players set @s cppValue 0
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:dark_oak_sapling"}] run scoreboard players set @s cppValue 17
execute at @s if data block ~ ~-1 ~ Items[{tag:{id:"minecraft:acacia_sapling"}}] run scoreboard players set @s cppValue 16
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:jungle_sapling"}] run scoreboard players set @s cppValue 15
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:birch_sapling"}] run scoreboard players set @s cppValue 14
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:spruce_sapling"}] run scoreboard players set @s cppValue 13
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:oak_sapling"}] run scoreboard players set @s cppValue 12
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:sweet_berries"}] run scoreboard players set @s cppValue 11
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:sweet_berries"}] run scoreboard players set @s cppValue 11
execute as @s[scores={cppValue=11}] run function cpp:item_frame/industrious_hand/done11
execute as @s[scores={cppValue=12}] run function cpp:item_frame/industrious_hand/done12
execute as @s[scores={cppValue=13}] run function cpp:item_frame/industrious_hand/done13
execute as @s[scores={cppValue=14}] run function cpp:item_frame/industrious_hand/done14
execute as @s[scores={cppValue=15}] run function cpp:item_frame/industrious_hand/done15
execute as @s[scores={cppValue=16}] run function cpp:item_frame/industrious_hand/done16
execute as @s[scores={cppValue=17}] run function cpp:item_frame/industrious_hand/done17
