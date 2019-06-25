scoreboard players set #max_durality cppValue 131
execute store result score #temp cppValue run data get entity @s SelectedItem.tag.Damage
execute if score #temp cppValue < #max_durality cppValue at @e[type=item,nbt={Age:0s},distance=..6,sort=nearest,limit=1] run function cpp:chain/pickaxe4/mark
execute if score #temp cppValue < #max_durality cppValue at @e[type=item,nbt={Age:1s},distance=..6,sort=nearest,limit=1] run function cpp:chain/pickaxe4/mark
scoreboard players reset @s cppUsePick4
