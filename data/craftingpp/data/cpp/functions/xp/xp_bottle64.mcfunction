execute store result score @s cppValue run xp query @s points
execute store result score @s cppLevel run data get entity @s XpLevel
tag @s[scores={cppLevel=20,cppValue=26..}] add cpp_has_enough_xp
tag @s[scores={cppLevel=21..}] add cpp_has_enough_xp

give @s[tag=cpp_has_enough_xp] experience_bottle{HideFlags:63,Enchantments:[{id:"minecraft:binding_curse"}],display:{Lore:["{\"text\":\"§664×\"}"]},compressedLevel:1s}
xp add @s[tag=cpp_has_enough_xp] -576
tag @s remove cpp_has_enough_xp
