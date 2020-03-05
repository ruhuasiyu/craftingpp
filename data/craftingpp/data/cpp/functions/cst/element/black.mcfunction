tag @s remove cpp_has_enough_xp
execute store result score @s cppLevel run data get entity @s XpLevel
tellraw @s[scores={cppLevel=..3}] {"translate":"item.cpp.elements.fail","with":["40"]}
execute as @s[scores={cppLevel=4..}] run function cpp:cst/element/black1
xp add @s[scores={cppLevel=4..}] -40
