execute if score #remove cppStoredxp matches 1 run function cpp:all_in_one_machine/dist/nh1
scoreboard players remove @s[scores={cppMacType=1..8,cppStoredxp=4..}] cppStoredxp 4
scoreboard players remove @s[scores={cppMacType=24..213,cppStoredxp=1..}] cppStoredxp 1

execute as @s[scores={cppMacType=1}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/iron_ore
execute as @s[scores={cppMacType=2}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/gold_ore
execute as @s[scores={cppMacType=3}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/coal_ore
execute as @s[scores={cppMacType=4}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/diamond_ore
execute as @s[scores={cppMacType=5}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/emerald_ore
execute as @s[scores={cppMacType=6}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/quartz_ore
execute as @s[scores={cppMacType=7}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/redstone_ore
execute as @s[scores={cppMacType=8}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/lapis_ore

execute as @s[scores={cppMacType=24}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/prismarine
execute as @s[scores={cppMacType=25}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/prismarine_bricks
execute as @s[scores={cppMacType=26}] run replaceitem block ~ ~ ~ container.21 minecraft:slime_ball

execute as @s[scores={cppMacType=27}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/white_wool
execute as @s[scores={cppMacType=28}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/orange_wool
execute as @s[scores={cppMacType=29}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/magenta_wool
execute as @s[scores={cppMacType=30}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/light_blue_wool
execute as @s[scores={cppMacType=31}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/yellow_wool
execute as @s[scores={cppMacType=32}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/lime_wool
execute as @s[scores={cppMacType=33}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/pink_wool
execute as @s[scores={cppMacType=34}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/gray_wool
execute as @s[scores={cppMacType=35}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/light_gray_wool
execute as @s[scores={cppMacType=36}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/cyan_wool
execute as @s[scores={cppMacType=37}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/purple_wool
execute as @s[scores={cppMacType=38}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/blue_wool
execute as @s[scores={cppMacType=39}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/brown_wool
execute as @s[scores={cppMacType=40}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/green_wool
execute as @s[scores={cppMacType=41}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/red_wool
execute as @s[scores={cppMacType=42}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/black_wool

execute as @s[scores={cppMacType=101}] run loot replace block ~ ~ ~ container.21 1 loot cpp:iron_dust
execute as @s[scores={cppMacType=102}] run loot replace block ~ ~ ~ container.21 1 loot cpp:gold_dust
execute as @s[scores={cppMacType=103}] run loot replace block ~ ~ ~ container.21 1 loot cpp:carbon_dust
execute as @s[scores={cppMacType=104}] run loot replace block ~ ~ ~ container.21 1 loot cpp:diamond_dust
execute as @s[scores={cppMacType=105}] run loot replace block ~ ~ ~ container.21 1 loot cpp:emerald_dust
execute as @s[scores={cppMacType=106}] run loot replace block ~ ~ ~ container.21 1 loot cpp:quartz_dust

execute as @s[scores={cppMacType=201}] run replaceitem block ~ ~ ~ container.21 minecraft:sand 4
execute as @s[scores={cppMacType=202}] run replaceitem block ~ ~ ~ container.21 minecraft:gravel 4
execute as @s[scores={cppMacType=203}] run replaceitem block ~ ~ ~ container.21 minecraft:flint 4
execute as @s[scores={cppMacType=211}] run replaceitem block ~ ~ ~ container.21 minecraft:sand 4
execute as @s[scores={cppMacType=212}] run replaceitem block ~ ~ ~ container.21 minecraft:gravel 4
execute as @s[scores={cppMacType=213}] run replaceitem block ~ ~ ~ container.21 minecraft:flint 4

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute as @s[scores={cppMacType=201..203}] run scoreboard players remove #temp cppValue 3
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 1

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute as @s[scores={cppMacType=211..213}] run scoreboard players remove #temp cppValue 3
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
