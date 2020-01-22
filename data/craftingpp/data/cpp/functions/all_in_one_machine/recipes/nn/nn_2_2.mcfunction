tag @s add cpp_machine_work
scoreboard players add @s cppTick 30
execute if score @s cppTick >= $allInOneMachinePeriod cppConfig run function cpp:all_in_one_machine/recipes/nn/nn_2_2_done
