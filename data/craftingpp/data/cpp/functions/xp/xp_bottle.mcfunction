execute store result score @s cppValue run xp query @s points
execute store result score @s cppLevel run data get entity @s XpLevel
tag @s[scores={cppLevel=1,cppValue=2..}] add cpp_has_enough_xp
tag @s[scores={cppLevel=2..}] add cpp_has_enough_xp
give @s[tag=cpp_has_enough_xp] experience_bottle
xp add @s[tag=cpp_has_enough_xp] -9
tag @s remove cpp_has_enough_xp
