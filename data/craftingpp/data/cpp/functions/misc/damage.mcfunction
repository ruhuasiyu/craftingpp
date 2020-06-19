execute store result score @s cppChainDam run data get storage cpp:temp tool.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score #damage cppValue run data get storage cpp:temp tool.tag.Damage
execute unless predicate cpp:no_damage store result storage cpp:temp tool.tag.Damage int 1 run scoreboard players add #damage cppValue 1
