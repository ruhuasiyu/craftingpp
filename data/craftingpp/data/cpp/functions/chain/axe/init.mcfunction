execute as @s[scores={cppUseAxe1=1..}] run scoreboard players set #max_durality cppValue 1561
execute as @s[scores={cppUseAxe2=1..}] run scoreboard players set #max_durality cppValue 250
execute as @s[scores={cppUseAxe3=1..}] run scoreboard players set #max_durality cppValue 32
execute as @s[scores={cppUseAxe4=1..}] run scoreboard players set #max_durality cppValue 131
execute as @s[scores={cppUseAxe5=1..}] run scoreboard players set #max_durality cppValue 2031
execute at @e[type=item,predicate=cpp:item/age0,distance=..6,sort=nearest,limit=1] run function cpp:chain/axe/mark

scoreboard players reset @s cppUseAxe1
scoreboard players reset @s cppUseAxe2
scoreboard players reset @s cppUseAxe3
scoreboard players reset @s cppUseAxe4
scoreboard players reset @s cppUseAxe5
