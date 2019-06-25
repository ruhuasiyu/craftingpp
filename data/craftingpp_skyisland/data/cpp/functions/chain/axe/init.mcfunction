execute as @s[scores={cppUseAxe1=1..}] run scoreboard players set #max_durality cppValue 1561
execute as @s[scores={cppUseAxe2=1..}] run scoreboard players set #max_durality cppValue 250
execute as @s[scores={cppUseAxe3=1..}] run scoreboard players set #max_durality cppValue 32
execute as @s[scores={cppUseAxe4=1..}] run scoreboard players set #max_durality cppValue 131
execute store result score #temp cppValue run data get entity @s SelectedItem.tag.Damage
execute if score #temp cppValue < #max_durality cppValue at @e[type=item,nbt={Age:0s},distance=..6,sort=nearest,limit=1] run function cpp:chain/axe/mark
execute if score #temp cppValue < #max_durality cppValue at @e[type=item,nbt={Age:1s},distance=..6,sort=nearest,limit=1] run function cpp:chain/axe/mark

scoreboard players reset @s cppUseAxe1
scoreboard players reset @s cppUseAxe2
scoreboard players reset @s cppUseAxe3
scoreboard players reset @s cppUseAxe4
