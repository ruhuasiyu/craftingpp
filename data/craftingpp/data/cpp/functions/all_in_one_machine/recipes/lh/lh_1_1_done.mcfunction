scoreboard players remove @s cppStoredxp 1
loot replace block ~ ~ ~ container.21 2 loot cpp:all_in_one_machine/lh_1_1
execute if predicate cpp:all_in_one_machine/green_force_of_water run data modify block ~ ~ ~ Items[{tag:{id:"cpp:green_force_of_water"}}].Count set value 2b
