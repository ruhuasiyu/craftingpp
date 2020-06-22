execute store result score @s cppChainDam run data get storage cpp:tool Item.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score #damage cppValue run data get storage cpp:tool Item.tag.Damage
execute unless predicate cpp:no_damage store result storage cpp:tool Item.tag.Damage int 1 run scoreboard players add #damage cppValue 1
