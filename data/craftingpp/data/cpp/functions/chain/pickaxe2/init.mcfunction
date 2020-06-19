scoreboard players set #max_durality cppValue 250
execute if score #damage cppValue < #max_durality cppValue at @e[type=item,predicate=cpp:item/age0,distance=..6,sort=nearest,limit=1] run function cpp:chain/pickaxe2/mark
scoreboard players reset @s cppUsePick2
