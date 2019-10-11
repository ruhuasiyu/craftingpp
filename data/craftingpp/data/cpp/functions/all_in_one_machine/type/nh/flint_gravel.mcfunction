tag @s add cpp_machine_work
scoreboard players add @s cppTick 24
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run scoreboard players remove @s cppStoredxp 1
execute if score @s cppTick >= #allInOneMachinePeriod cppValue run replaceitem block ~ ~ ~ container.21 minecraft:flint 8
execute if score @s cppTick >= #allInOneMachinePeriod cppValue if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint",Slot:3b}]} store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 7
execute if score @s cppTick >= #allInOneMachinePeriod cppValue if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint",Slot:4b}]} store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 7