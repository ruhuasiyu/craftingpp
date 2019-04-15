execute store result score @s cppValue run data get entity @s XpTotal
execute if score @s cppValue >= #remove_xp_value cppValue run tag @s add cpp_has_enough_xp
execute as @s[tag=cpp_has_enough_xp] run function cpp:xp/remove
