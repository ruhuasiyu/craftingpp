tp @s ~ 255 ~
execute store result score #t cppValue run spreadplayers ~ ~ 1 10 false @s
execute if score #t cppValue matches 0 run fill ~-1 62 ~-1 1 62 1 dirt
spreadplayers ~ ~ 1 10 false @s
tellraw @s {"translate":"item.cpp.origin_of_the_world.no_spawn"}
