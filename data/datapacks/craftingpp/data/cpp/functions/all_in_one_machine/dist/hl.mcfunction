scoreboard players remove @s cppStoredxp 4

execute as @s[scores={cppMacType=1}] run loot insert ~ ~ ~ loot cpp:bionic_acid
execute as @s[scores={cppMacType=2}] run loot insert ~ ~ ~ loot cpp:alkaloid
execute as @s[scores={cppMacType=3}] run loot insert ~ ~ ~ loot cpp:coarse_silicon
execute as @s[scores={cppMacType=4}] run loot insert ~ ~ ~ loot cpp:bottle_of_air
execute as @s[scores={cppMacType=5}] run loot insert ~ ~ ~ loot cpp:silicon_dust
execute as @s[scores={cppMacType=6}] run loot insert ~ ~ ~ loot cpp:rare_earth_salt
execute as @s[scores={cppMacType=7}] run loot insert ~ ~ ~ loot cpp:alkaloid_rare_earth
execute as @s[scores={cppMacType=8}] run loot insert ~ ~ ~ loot cpp:rare_earth_dust
execute as @s[scores={cppMacType=9}] run loot insert ~ ~ ~ loot cpp:ammonia_refrigerant
execute as @s[scores={cppMacType=9}] run loot insert ~ ~ ~ loot cpp:cinder

execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[4].Count
execute at @s store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[3].Count
execute at @s store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players remove #temp cppValue 1
