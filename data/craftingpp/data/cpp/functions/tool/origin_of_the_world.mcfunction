execute store result score @s cppValue run xp query @s points
execute store result score @s cppLevel run data get entity @s XpLevel
tag @s[scores={cppLevel=2,cppValue=4..}] add cpp_has_enough_xp
tag @s[scores={cppLevel=3..}] add cpp_has_enough_xp

tellraw @s[tag=!cpp_has_enough_xp] {"translate":"item.cpp.elements.fail","with":["40"]}
execute as @s[tag=cpp_has_enough_xp] run function cpp:tool/origin_of_the_world0
