scoreboard players set @s cppValue 0
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:beetroot_seeds"}] run scoreboard players set @s cppValue 4
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:potato"}] run scoreboard players set @s cppValue 3
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:carrot"}] run scoreboard players set @s cppValue 2
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:wheat_seeds"}] run scoreboard players set @s cppValue 1
execute as @s[scores={cppValue=1}] run function cpp:item_frame/industrious_hand/done1
execute as @s[scores={cppValue=2}] run function cpp:item_frame/industrious_hand/done2
execute as @s[scores={cppValue=3}] run function cpp:item_frame/industrious_hand/done3
execute as @s[scores={cppValue=4}] run function cpp:item_frame/industrious_hand/done4
