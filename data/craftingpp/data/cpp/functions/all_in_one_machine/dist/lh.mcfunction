scoreboard players remove @s[scores={cppMacType=1}] cppStoredxp 2
scoreboard players remove @s[scores={cppMacType=2..4}] cppStoredxp 1

execute as @s[scores={cppMacType=1}] run loot replace block ~ ~ ~ container.21 1 loot cpp:cold_drink
execute as @s[scores={cppMacType=2..4}] run replaceitem block ~ ~ ~ container.21 ice
execute as @s[scores={cppMacType=2..4}] run loot replace block ~ ~ ~ container.22 1 loot cpp:ammonia_refrigerant

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute as @s[scores={cppMacType=1..3}] store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 1

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute as @s[scores={cppMacType=1..2}] store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute as @s[scores={cppMacType=4}] store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
