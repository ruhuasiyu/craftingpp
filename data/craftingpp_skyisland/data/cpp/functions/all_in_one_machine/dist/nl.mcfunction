scoreboard players remove @s cppStoredxp 4

execute as @s[scores={cppMacType=1}] run loot insert ~ ~ ~ loot cpp:potions/chain
execute as @s[scores={cppMacType=2}] run loot insert ~ ~ ~ loot cpp:potions/slow_falling
execute as @s[scores={cppMacType=3}] run loot insert ~ ~ ~ loot cpp:potions/tide
execute as @s[scores={cppMacType=4}] run loot insert ~ ~ ~ loot cpp:potions/night_vision
execute as @s[scores={cppMacType=5}] run loot insert ~ ~ ~ loot cpp:potions/invisibility
execute as @s[scores={cppMacType=6}] run loot insert ~ ~ ~ loot cpp:potions/fire_resistance
execute as @s[scores={cppMacType=7}] run loot insert ~ ~ ~ loot cpp:potions/water_breathing
execute as @s[scores={cppMacType=8}] run loot insert ~ ~ ~ loot cpp:potions/leaping
execute as @s[scores={cppMacType=9}] run loot insert ~ ~ ~ loot cpp:potions/swiftness
execute as @s[scores={cppMacType=10}] run loot insert ~ ~ ~ loot cpp:potions/strength
execute as @s[scores={cppMacType=11}] run loot insert ~ ~ ~ loot cpp:potions/resistance
execute as @s[scores={cppMacType=12}] run loot insert ~ ~ ~ loot cpp:potions/haste
execute as @s[scores={cppMacType=13}] run loot insert ~ ~ ~ loot cpp:potions/regeneration
execute as @s[scores={cppMacType=14}] run loot insert ~ ~ ~ loot cpp:potions/healing

execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[4].Count
execute at @s store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[3].Count
execute at @s store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players remove #temp cppValue 1
