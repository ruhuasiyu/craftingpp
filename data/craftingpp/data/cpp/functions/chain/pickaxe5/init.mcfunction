scoreboard players set #max_durality cppValue 2031
execute if score #damage cppValue < #max_durality cppValue at @e[type=item,predicate=cpp:item/age0,distance=..6,sort=nearest,limit=1] run function cpp:chain/pickaxe5/mark
scoreboard players reset @s cppUsePick5
