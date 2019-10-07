scoreboard players remove @s cppStoredxp 4

execute as @s[scores={cppMacType=1}] run loot replace block ~ ~ ~ container.21 2 loot cpp:bionic_acid
execute as @s[scores={cppMacType=2}] run loot replace block ~ ~ ~ container.21 2 loot cpp:alkaloid
execute as @s[scores={cppMacType=3}] run loot replace block ~ ~ ~ container.21 2 loot cpp:coarse_silicon
execute as @s[scores={cppMacType=4}] run loot replace block ~ ~ ~ container.21 2 loot cpp:bottle_of_air
execute as @s[scores={cppMacType=5}] run loot replace block ~ ~ ~ container.21 2 loot cpp:silicon_dust
execute as @s[scores={cppMacType=6}] run loot replace block ~ ~ ~ container.21 2 loot cpp:rare_earth_salt
execute as @s[scores={cppMacType=7}] run loot replace block ~ ~ ~ container.21 2 loot cpp:alkaloid_rare_earth
execute as @s[scores={cppMacType=8}] run loot replace block ~ ~ ~ container.21 2 loot cpp:rare_earth_dust
execute as @s[scores={cppMacType=9}] run loot replace block ~ ~ ~ container.21 1 loot cpp:ammonia_refrigerant
execute as @s[scores={cppMacType=9}] run loot replace block ~ ~ ~ container.22 1 loot cpp:cinder

execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute at @s store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute at @s store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
