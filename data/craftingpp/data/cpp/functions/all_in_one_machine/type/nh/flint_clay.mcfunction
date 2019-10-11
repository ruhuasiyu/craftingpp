tag @s add cpp_machine_work
scoreboard players add @s cppTick 24
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run scoreboard players remove @s cppStoredxp 1
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run replaceitem block ~ ~ ~ container.21 minecraft:slime_ball