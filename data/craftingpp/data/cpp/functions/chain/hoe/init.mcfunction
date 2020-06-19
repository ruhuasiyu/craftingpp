execute at @s[scores={cppUseHoe1=1..}] run scoreboard players set #max_durality cppValue 1561
execute at @s[scores={cppUseHoe2=1..}] run scoreboard players set #max_durality cppValue 250
execute at @s[scores={cppUseHoe3=1..}] run scoreboard players set #max_durality cppValue 32
execute at @s[scores={cppUseHoe4=1..}] run scoreboard players set #max_durality cppValue 131
execute as @s[scores={cppUseHoe5=1..}] run scoreboard players set #max_durality cppValue 2031
execute if score #damage cppValue < #max_durality cppValue at @e[type=item,predicate=cpp:item/age0,distance=..6,sort=nearest,limit=1] run function cpp:chain/hoe/mark

scoreboard players reset @s cppUseHoe1
scoreboard players reset @s cppUseHoe2
scoreboard players reset @s cppUseHoe3
scoreboard players reset @s cppUseHoe4
scoreboard players reset @s cppUseHoe5
