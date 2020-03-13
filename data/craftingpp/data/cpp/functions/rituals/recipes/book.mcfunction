tag @s add cpp_ritual_work
scoreboard players add @s cppTick 1
particle enchant ~ ~1.7 ~ 0 0 0 1 10
execute as @s[scores={cppTick=1}] run tellraw @p {"translate":"info.cpp.rituals.start"}
execute if score @s cppTick >= $ritualsTime cppConfig run function cpp:rituals/recipes/book_done
