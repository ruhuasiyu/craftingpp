tag @s add cpp_machine_work
scoreboard players add @s cppTick 6
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run function cpp:all_in_one_machine/type/hh/gold_ore_emerald_ore_done
