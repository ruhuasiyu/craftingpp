tag @s remove cpp_has_enough_xp
execute store result score @s cppValue run xp query @s points
execute store result score @s cppLevel run data get entity @s XpLevel
tag @s[scores={cppLevel=0,cppValue=4..}] add cpp_has_enough_xp
tag @s[scores={cppLevel=1..}] add cpp_has_enough_xp

tellraw @s[tag=!cpp_has_enough_xp] {"translate":"item.cpp.elements.fail","with":["4"]}
execute as @s[tag=cpp_has_enough_xp] run time add 60s
xp add @s[tag=cpp_has_enough_xp] -4
