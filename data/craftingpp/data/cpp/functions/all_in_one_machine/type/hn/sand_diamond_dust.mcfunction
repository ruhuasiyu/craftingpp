tag @s add cpp_machine_work
scoreboard players add @s cppTick 24
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run scoreboard players remove @s cppStoredxp 1
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run replaceitem block ~ ~ ~ container.21 minecraft:diamond
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run loot replace block ~ ~ ~ container.22 1 loot cpp:items/percent20_cinder