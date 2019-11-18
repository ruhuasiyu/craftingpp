tag @s add cpp_machine_work
scoreboard players add @s cppTick 12
execute if score @s cppTick >= #mobProjectorPeriod cppValue run function cpp:mob_projector/done
