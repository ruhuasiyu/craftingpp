execute at @s[scores={cppCraft=23001}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:stone",Count:8b}}
execute at @s[scores={cppCraft=23002}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:cobblestone",Count:8b}}
execute at @s[scores={cppCraft=23001..23002}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:bucket",Count:1b}}
execute at @s[scores={cppCraft=23003}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:obsidian",Count:3b}}
execute at @s[scores={cppCraft=23003}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:bucket",Count:3b}}

execute as @s[scores={cppCraft=23001}] store result entity @s Items[4].Count byte 1 run scoreboard players get #0 cppCount1
execute as @s[scores={cppCraft=23002}] store result entity @s Items[3].Count byte 1 run scoreboard players get #0 cppCount1
execute as @s[scores={cppCraft=23003}] store result entity @s Items[4].Count byte 1 run scoreboard players get #0 cppCount1
execute as @s[scores={cppCraft=23003}] store result entity @s Items[3].Count byte 1 run scoreboard players get #0 cppCount1
execute as @s[scores={cppCraft=23003}] store result entity @s Items[2].Count byte 1 run scoreboard players get #0 cppCount1

execute as @s store result score @s cppCount1 run data get entity @s Items[1].Count
execute as @s run scoreboard players operation @s cppCount1 -= #1 cppCount1
execute as @s store result entity @s Items[1].Count byte 1 run scoreboard players get @s cppCount1

scoreboard players set @s cppTicks 0