tag @s add cpp_machine_work
scoreboard players add @s cppTick 60
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run scoreboard players remove @s cppStoredxp 1
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run replaceitem block ~ ~ ~ container.21 minecraft:snow_block
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run loot replace block ~ ~ ~ container.22 1 loot cpp:ammonia_refrigerant
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run data modify block ~ ~ ~ Items[{tag:{id:"cpp:green_force_of_water"}}].Count set value 2b
