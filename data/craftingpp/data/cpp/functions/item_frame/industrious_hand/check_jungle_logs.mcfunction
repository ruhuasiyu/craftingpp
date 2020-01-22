scoreboard players set @s cppValue 0
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:cocoa_beans"}] run scoreboard players set @s cppValue 31
execute as @s[scores={cppValue=31}] run function cpp:item_frame/industrious_hand/done31
