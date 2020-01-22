tag @s add cpp_machine_work
scoreboard players add @s cppTick 24
execute if score @s cppTick >= $allInOneMachinePeriod cppConfig run function cpp:all_in_one_machine/recipes/hn/hn_1_25_done
