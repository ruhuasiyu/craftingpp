tag @s add cpp_machine_work
scoreboard players add @s cppTick 60
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run scoreboard players remove @s cppStoredxp 1
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run replaceitem block ~ ~ ~ container.21 minecraft:stone
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run data modify block ~ ~ ~ Items[{Slot:3b}].Count set value 2b
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run data modify block ~ ~ ~ Items[{Slot:4b}].Count set value 2b
