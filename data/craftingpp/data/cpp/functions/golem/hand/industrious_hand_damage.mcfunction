execute store result score #t cppValue run data get entity @s Item.tag.Damage
execute store result entity @s Item.tag.Damage int 1 run scoreboard players add #t cppValue 1
kill @s[predicate=cpp:broken_shears]
