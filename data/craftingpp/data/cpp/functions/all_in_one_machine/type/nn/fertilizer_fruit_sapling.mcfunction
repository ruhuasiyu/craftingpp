tag @s add cpp_machine_work
scoreboard players add @s cppTick 30
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run scoreboard players remove @s cppStoredxp 1
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nn/fertilizer_fruit_sapling