scoreboard players set @s cppValue 0
execute if data block ~ ~-1 ~ Items[{id:"minecraft:carrot"}] run scoreboard players set @s cppValue 1
execute if data block ~ ~-1 ~ Items[{id:"minecraft:beetroot"}] run scoreboard players set @s cppValue 2
execute if data block ~ ~-1 ~ Items[{id:"minecraft:potato"}] run scoreboard players set @s cppValue 3
execute if score @s cppValue matches 1.. run function cpp:item_frame/toughen_hand/pig

