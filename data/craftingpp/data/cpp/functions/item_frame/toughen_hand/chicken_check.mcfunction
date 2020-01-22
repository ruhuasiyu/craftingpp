scoreboard players set @s cppValue 0
execute if data block ~ ~-1 ~ Items[{id:"minecraft:wheat_seeds"}] run scoreboard players set @s cppValue 1
execute if data block ~ ~-1 ~ Items[{id:"minecraft:beetroot_seeds"}] run scoreboard players set @s cppValue 2
execute if data block ~ ~-1 ~ Items[{id:"minecraft:pumpkin_seeds"}] run scoreboard players set @s cppValue 3
execute if data block ~ ~-1 ~ Items[{id:"minecraft:melon_seeds"}] run scoreboard players set @s cppValue 4
execute as @s[scores={cppValue=1..}] run function cpp:item_frame/toughen_hand/chicken
