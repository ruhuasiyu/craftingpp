scoreboard players remove @s[scores={cppMacType=1..6}] cppStoredxp 1
scoreboard players remove @s[scores={cppMacType=7..10}] cppStoredxp 4

execute as @s[scores={cppMacType=1}] run loot insert ~ ~ ~ loot cpp:items/iron_ingot
execute as @s[scores={cppMacType=2}] run loot insert ~ ~ ~ loot cpp:items/gold_ingot
execute as @s[scores={cppMacType=3}] run loot insert ~ ~ ~ loot cpp:items/coal
execute as @s[scores={cppMacType=4}] run loot insert ~ ~ ~ loot cpp:items/diamond
execute as @s[scores={cppMacType=5}] run loot insert ~ ~ ~ loot cpp:items/emerald
execute as @s[scores={cppMacType=6}] run loot insert ~ ~ ~ loot cpp:items/quartz
execute as @s[scores={cppMacType=7}] run loot insert ~ ~ ~ loot cpp:silicon_plate
execute as @s[scores={cppMacType=8}] run loot insert ~ ~ ~ loot cpp:rare_earth_glass
execute as @s[scores={cppMacType=9}] run loot insert ~ ~ ~ loot cpp:reinforced_glass
execute as @s[scores={cppMacType=10}] run loot insert ~ ~ ~ loot cpp:bottle_of_salt
execute as @s[scores={cppMacType=1..9}] run loot insert ~ ~ ~ loot cpp:items/percent20_cinder

execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[4].Count
execute at @s store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[3].Count
execute at @s store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players remove #temp cppValue 1
