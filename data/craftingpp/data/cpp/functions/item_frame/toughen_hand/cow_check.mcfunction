scoreboard players set @s cppValue 0
execute at @s if data block ~ ~-1 ~ Items[{id:"minecraft:wheat"}] run scoreboard players set @s cppValue 1
execute as @s[scores={cppValue=1..}] run function cpp:item_frame/toughen_hand/cow
