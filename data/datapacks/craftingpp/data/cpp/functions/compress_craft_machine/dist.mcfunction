execute as @s[scores={cppMacType=1}] run loot insert ~ ~ ~ loot blocks/hay_block
execute as @s[scores={cppMacType=2}] run loot insert ~ ~ ~ loot cpp:items/melon
execute as @s[scores={cppMacType=3}] run loot insert ~ ~ ~ loot blocks/dried_kelp_block
execute as @s[scores={cppMacType=4}] run loot insert ~ ~ ~ loot blocks/nether_wart_block
execute as @s[scores={cppMacType=5}] run loot insert ~ ~ ~ loot blocks/slime_block
execute as @s[scores={cppMacType=6}] run loot insert ~ ~ ~ loot blocks/bone_block
execute as @s[scores={cppMacType=7}] run loot insert ~ ~ ~ loot blocks/diamond_ore
execute as @s[scores={cppMacType=8}] run loot insert ~ ~ ~ loot blocks/coal_block
execute as @s[scores={cppMacType=9}] run loot insert ~ ~ ~ loot blocks/iron_block
execute as @s[scores={cppMacType=10}] run loot insert ~ ~ ~ loot blocks/gold_block
execute as @s[scores={cppMacType=11}] run loot insert ~ ~ ~ loot blocks/redstone_block
execute as @s[scores={cppMacType=12}] run loot insert ~ ~ ~ loot blocks/lapis_block
execute as @s[scores={cppMacType=13}] run loot insert ~ ~ ~ loot blocks/diamond_block
execute as @s[scores={cppMacType=14}] run loot insert ~ ~ ~ loot blocks/emerald_block
execute as @s[scores={cppMacType=15}] run loot insert ~ ~ ~ loot cpp:items/iron_ingot
execute as @s[scores={cppMacType=16}] run loot insert ~ ~ ~ loot cpp:items/gold_ingot

execute as @s[scores={cppMacType=41}] run loot insert ~ ~ ~ loot cpp:items/leather
execute as @s[scores={cppMacType=42}] run loot insert ~ ~ ~ loot cpp:items/snow_block
execute as @s[scores={cppMacType=43}] run loot insert ~ ~ ~ loot cpp:items/glowstone
execute as @s[scores={cppMacType=44}] run loot insert ~ ~ ~ loot cpp:items/clay
execute as @s[scores={cppMacType=45}] run loot insert ~ ~ ~ loot blocks/quartz_block

execute at @s as @s[scores={cppMacType=1..16}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 9
execute at @s as @s[scores={cppMacType=41..45}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 4
