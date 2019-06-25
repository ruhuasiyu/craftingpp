execute store result score @s cppValue run data get entity @s XpTotal
execute if score @s cppValue matches 9.. run give @s experience_bottle
execute if score @s cppValue matches 9.. run xp add @s -9
