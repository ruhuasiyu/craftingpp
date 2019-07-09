scoreboard players remove @s[scores={cppMacType=1..4}] cppStoredxp 1
scoreboard players remove @s[scores={cppMacType=13..14}] cppStoredxp 4

execute as @s[scores={cppMacType=1}] run loot insert ~ ~ ~ loot cpp:items/cobblestone
execute as @s[scores={cppMacType=2}] run loot insert ~ ~ ~ loot cpp:items/stone
execute as @s[scores={cppMacType=3}] run loot insert ~ ~ ~ loot cpp:items/netherrack
execute as @s[scores={cppMacType=4}] run loot insert ~ ~ ~ loot cpp:items/end_stone
execute as @s[scores={cppMacType=13..14}] run loot insert ~ ~ ~ loot cpp:items/obsidian
execute as @s[scores={cppMacType=13..14}] run loot insert ~ ~ ~ loot cpp:items/bucket

execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[4].Count
execute at @s as @s[scores={cppMacType=14}] store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[3].Count
execute at @s as @s[scores={cppMacType=13}] store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players remove #temp cppValue 1
