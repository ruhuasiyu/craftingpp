scoreboard players remove @s[scores={cppMacType=1..6}] cppStoredxp 1
scoreboard players remove @s[scores={cppMacType=7..10}] cppStoredxp 4

execute as @s[scores={cppMacType=1}] run replaceitem block ~ ~ ~ container.21 minecraft:iron_ingot
execute as @s[scores={cppMacType=2}] run replaceitem block ~ ~ ~ container.21 minecraft:gold_ingot
execute as @s[scores={cppMacType=3}] run replaceitem block ~ ~ ~ container.21 minecraft:coal
execute as @s[scores={cppMacType=4}] run replaceitem block ~ ~ ~ container.21 minecraft:diamond
execute as @s[scores={cppMacType=5}] run replaceitem block ~ ~ ~ container.21 minecraft:emerald
execute as @s[scores={cppMacType=6}] run replaceitem block ~ ~ ~ container.21 minecraft:quartz
execute as @s[scores={cppMacType=1..9}] run loot replace block ~ ~ ~ container.22 1 loot cpp:items/percent20_cinder
execute as @s[scores={cppMacType=7}] run loot replace block ~ ~ ~ container.21 2 loot cpp:silicon_plate
execute as @s[scores={cppMacType=8}] run loot replace block ~ ~ ~ container.21 2 loot cpp:rare_earth_glass
execute as @s[scores={cppMacType=9}] run loot replace block ~ ~ ~ container.21 2 loot cpp:reinforced_glass
execute as @s[scores={cppMacType=10}] run loot replace block ~ ~ ~ container.21 2 loot cpp:bottle_of_salt

execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute at @s store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute at @s store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
