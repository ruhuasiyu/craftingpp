tag @s remove cpp_has_enough_xp
execute store result score @s cppValue run xp query @s points
execute store result score @s cppLevel run data get entity @s XpLevel
tag @s[scores={cppLevel=2,cppValue=9..}] add cpp_has_enough_xp
tag @s[scores={cppLevel=3..}] add cpp_has_enough_xp

tellraw @s[tag=!cpp_has_enough_xp] {"translate":"item.cpp.elements.fail","with":["25"]}
execute as @s[tag=cpp_has_enough_xp] run function cpp:use_carrot_on_a_stick/elements/cyan1
xp add @s[tag=cpp_has_enough_xp] -25
