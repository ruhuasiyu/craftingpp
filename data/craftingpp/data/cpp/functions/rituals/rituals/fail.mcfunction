execute unless entity @s[scores={cppTick=1..}] run tellraw @p {"translate":"info.cpp.rituals.fail"}
execute as @s[scores={cppTick=1..}] run tellraw @p {"translate":"info.cpp.rituals.break"}
scoreboard players reset @s cppTick
tag @s remove cpp_rituals_item
