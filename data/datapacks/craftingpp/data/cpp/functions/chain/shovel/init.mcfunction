execute at @s[scores={cppUseShovel1=1..}] run scoreboard players set #max_durality cppValue 1561
execute at @s[scores={cppUseShovel2=1..}] run scoreboard players set #max_durality cppValue 250
execute at @s[scores={cppUseShovel3=1..}] run scoreboard players set #max_durality cppValue 32
execute at @s[scores={cppUseShovel4=1..}] run scoreboard players set #max_durality cppValue 131
scoreboard players set @s cppChainDam 0
execute store result score @s cppChainDam run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score #temp cppValue run data get entity @s SelectedItem.tag.Damage
execute at @e[type=item,distance=..6,nbt={Age:0s},sort=nearest,limit=1] align xyz run function cpp:chain/shovel/mark
execute at @e[type=item,distance=..6,nbt={Age:1s},sort=nearest,limit=1] align xyz run function cpp:chain/shovel/mark
