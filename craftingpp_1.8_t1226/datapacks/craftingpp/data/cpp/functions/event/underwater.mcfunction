scoreboard players add @s cppWater 1
xp add @s[scores={cppWater=20..}] 6
effect give @s[scores={cppWater=20..},level=1..] minecraft:water_breathing 1 0 true
xp add @s[scores={cppWater=20..},level=1..] -1
xp add @s[scores={cppWater=20..}] -6
scoreboard players set @s[scores={cppWater=20..}] cppWater 0
