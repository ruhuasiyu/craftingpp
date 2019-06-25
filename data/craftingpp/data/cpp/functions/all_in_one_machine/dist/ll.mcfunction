scoreboard players remove @s cppStoredxp 1

loot insert ~ ~ ~ loot cpp:items/snow_block
loot insert ~ ~ ~ loot cpp:ammonia_refrigerant

execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[4].Count
execute at @s as @s[scores={cppMacType=1..3}] store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[3].Count
execute at @s as @s[scores={cppMacType=1..2}] store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s as @s[scores={cppMacType=4}] store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players remove #temp cppValue 1
