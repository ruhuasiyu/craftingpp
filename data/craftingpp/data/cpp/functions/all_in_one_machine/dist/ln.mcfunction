scoreboard players remove @s[scores={cppMacType=1..4}] cppStoredxp 1
scoreboard players remove @s[scores={cppMacType=13..14}] cppStoredxp 4

execute as @s[scores={cppMacType=1}] run replaceitem block ~ ~ ~ container.21 minecraft:cobblestone
execute as @s[scores={cppMacType=2}] run replaceitem block ~ ~ ~ container.21 minecraft:stone
execute as @s[scores={cppMacType=3}] run replaceitem block ~ ~ ~ container.21 minecraft:netherrack
execute as @s[scores={cppMacType=4}] run replaceitem block ~ ~ ~ container.21 minecraft:end_stone
execute as @s[scores={cppMacType=13..14}] run replaceitem block ~ ~ ~ container.21 minecraft:obsidian
execute as @s[scores={cppMacType=13..14}] run replaceitem block ~ ~ ~ container.22 minecraft:bucket

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute as @s[scores={cppMacType=14}] store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 1

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute as @s[scores={cppMacType=13}] store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
