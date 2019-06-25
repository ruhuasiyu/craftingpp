execute store result score @s cppValue run data get entity @s XpTotal
execute if score @s cppValue matches ..39 run tellraw @s {"translate":"item.cpp.elements.fail","with":["40"]}
execute if score @s cppValue matches 40.. run function cpp:use_carrot_on_a_stick/tool/origin_of_the_world1
execute if score @s cppValue matches 40.. run xp add @s -40
