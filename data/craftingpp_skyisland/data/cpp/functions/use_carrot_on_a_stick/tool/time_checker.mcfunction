execute store result score @s cppValue run data get entity @s XpTotal
execute if score @s cppValue matches ..3 run tellraw @s {"translate":"item.cpp.elements.fail","with":["4"]}
execute if score @s cppValue matches 4.. run time add 60s
execute if score @s cppValue matches 4.. run xp add @s -4
