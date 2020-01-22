tag @s add cpp_machine_work
scoreboard players add @s cppTick 60
execute if score @s cppTick >= $allInOneMachinePeriod cppConfig run function cpp:all_in_one_machine/recipes/lh/lh_1_1_done
