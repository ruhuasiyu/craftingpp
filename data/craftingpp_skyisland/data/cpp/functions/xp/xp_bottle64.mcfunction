execute store result score @s cppValue run data get entity @s XpTotal
execute if score @s cppValue matches 576.. run give @s experience_bottle{HideFlags:63,Enchantments:[{id:"minecraft:binding_curse"}],display:{Lore:["{\"text\":\"§664×\"}"]},compressedLevel:1s}
execute if score @s cppValue matches 576.. run xp add @s -576
