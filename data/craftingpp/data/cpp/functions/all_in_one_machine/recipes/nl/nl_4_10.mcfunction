tag @s add cpp_machine_work
scoreboard players add @s cppTick 6
execute if score @s cppTick >= $allInOneMachinePeriod cppConfig run function cpp:all_in_one_machine/recipes/nl/nl_4_10_done
