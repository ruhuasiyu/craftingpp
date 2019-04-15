execute as @s[scores={cppMacType=1}] run loot insert ~ ~ ~ loot blocks/emerald_ore
execute as @s[scores={cppMacType=1}] run loot insert ~ ~ ~ loot blocks/emerald_ore
execute as @s[scores={cppMacType=1}] run loot insert ~ ~ ~ loot blocks/emerald_ore
execute as @s[scores={cppMacType=1..7}] run loot insert ~ ~ ~ loot blocks/emerald_ore

scoreboard players add @s cppStoredxp 7
execute as @s[scores={cppMacType=8}] run scoreboard players add @s cppStoredxp 7
execute if score @s cppStoredxp >= #xp_in_bottle cppValue run loot insert ~ ~ ~ loot cpp:items/experience_bottle
execute if score @s cppStoredxp >= #xp_in_bottle cppValue run scoreboard players operation @s cppStoredxp -= #xp_in_bottle cppValue
execute if score @s cppStoredxp >= #xp_in_bottle cppValue run loot insert ~ ~ ~ loot cpp:items/experience_bottle
execute if score @s cppStoredxp >= #xp_in_bottle cppValue run scoreboard players operation @s cppStoredxp -= #xp_in_bottle cppValue

execute at @s as @s[scores={cppMacType=1}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s as @s[scores={cppMacType=2}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s as @s[scores={cppMacType=3}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 4
execute at @s as @s[scores={cppMacType=4}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 8
execute at @s as @s[scores={cppMacType=5}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 16
execute at @s as @s[scores={cppMacType=6}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 32
execute at @s as @s[scores={cppMacType=7}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 48
execute at @s as @s[scores={cppMacType=8}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 1
