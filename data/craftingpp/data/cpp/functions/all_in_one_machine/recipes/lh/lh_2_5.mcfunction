tag @s add cpp_machine_work
scoreboard players add @s cppTick 12
execute if score @s cppTick >= $allInOneMachinePeriod cppConfig run function cpp:all_in_one_machine/recipes/lh/lh_2_5_done
