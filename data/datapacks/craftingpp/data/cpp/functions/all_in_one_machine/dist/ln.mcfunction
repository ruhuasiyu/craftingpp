scoreboard players remove @s[scores={cppMacType=1..2}] cppStoredxp 1
scoreboard players remove @s[scores={cppMacType=3..4}] cppStoredxp 4

execute as @s[scores={cppMacType=1}] run loot insert ~ ~ ~ loot blocks/cobblestone
execute as @s[scores={cppMacType=2}] run loot insert ~ ~ ~ loot cpp:items/stone
execute as @s[scores={cppMacType=3..4}] run loot insert ~ ~ ~ loot blocks/obsidian
execute as @s[scores={cppMacType=3..4}] run loot insert ~ ~ ~ loot cpp:items/bucket

execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[4].Count
execute at @s as @s[scores={cppMacType=4}] store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[3].Count
execute at @s as @s[scores={cppMacType=3}] store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players remove #temp cppValue 1
