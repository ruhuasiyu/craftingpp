execute store result score @s cppValue run data get entity @s XpTotal
execute if score @s cppValue matches ..9 run tellraw @s {"translate":"item.cpp.elements.fail","with":["10"]}
execute if score @s cppValue matches 10.. run function cpp:use_carrot_on_a_stick/elements/blue1
execute if score @s cppValue matches 10.. run xp add @s -10
