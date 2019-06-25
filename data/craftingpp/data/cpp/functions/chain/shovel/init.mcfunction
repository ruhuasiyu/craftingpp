execute at @s[scores={cppUseShovel1=1..}] run scoreboard players set #max_durality cppValue 1561
execute at @s[scores={cppUseShovel2=1..}] run scoreboard players set #max_durality cppValue 250
execute at @s[scores={cppUseShovel3=1..}] run scoreboard players set #max_durality cppValue 32
execute at @s[scores={cppUseShovel4=1..}] run scoreboard players set #max_durality cppValue 131
execute store result score #temp cppValue run data get entity @s SelectedItem.tag.Damage
execute if score #temp cppValue < #max_durality cppValue at @e[type=item,nbt={Age:0s},distance=..6,sort=nearest,limit=1] run function cpp:chain/shovel/mark
execute if score #temp cppValue < #max_durality cppValue at @e[type=item,nbt={Age:1s},distance=..6,sort=nearest,limit=1] run function cpp:chain/shovel/mark

scoreboard players reset @s cppUseShovel1
scoreboard players reset @s cppUseShovel2
scoreboard players reset @s cppUseShovel3
scoreboard players reset @s cppUseShovel4
