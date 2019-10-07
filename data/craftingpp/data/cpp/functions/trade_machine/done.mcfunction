scoreboard players add @s cppStoredxp 7
execute if score @s cppStoredxp matches 9.. run replaceitem block ~ ~ ~ container.16 minecraft:experience_bottle
execute if score @s cppStoredxp matches 9.. run scoreboard players remove @s cppStoredxp 9
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players remove #temp cppValue 1
