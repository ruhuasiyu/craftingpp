execute store result score @s cppValue run data get entity @s XpTotal
execute if score @s cppValue matches ..24 run tellraw @s {"translate":"item.cpp.elements.fail","with":["25"]}
execute if score @s cppValue matches 25.. run function cpp:use_carrot_on_a_stick/elements/yellow1
execute if score @s cppValue matches 25.. run xp add @s -25
