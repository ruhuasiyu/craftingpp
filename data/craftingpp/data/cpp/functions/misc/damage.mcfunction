execute store result score #unbreak_lvl cppValue run data get storage cpp:damage Item.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score #damage cppValue run data get storage cpp:damage Item.tag.Damage
execute if score #unbreak_lvl cppValue matches 1.. run function cpp:damage
execute store result storage cpp:damage Item.tag.Damage int 1 run scoreboard players add #damage cppValue 1
