execute store result score @s cppChainDam run data get storage cpp:damage Item.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score #damage cppValue run data get storage cpp:damage Item.tag.Damage
execute if predicate cpp:damage store result storage cpp:damage Item.tag.Damage int 1 run scoreboard players add #damage cppValue 1
