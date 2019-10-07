scoreboard players remove @s cppStoredxp 1

replaceitem block ~ ~ ~ container.21 minecraft:snow_block
loot replace block ~ ~ ~ container.22 1 loot cpp:ammonia_refrigerant

execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute at @s as @s[scores={cppMacType=1..3}] store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 1

execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute at @s as @s[scores={cppMacType=1..2}] store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s as @s[scores={cppMacType=4}] store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
