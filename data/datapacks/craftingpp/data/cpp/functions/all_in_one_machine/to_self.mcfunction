replaceitem block ~ ~ ~ container.21 air
replaceitem block ~ ~ ~ container.22 air
execute unless data block ~ ~ ~ Items[{Slot:6b}] run replaceitem block ~ ~ ~ container.6 firework_star{CustomModelData:12971000}

execute as @s[scores={cppTemperature=0,cppPressure=0}] run function cpp:all_in_one_machine/dist/ll
execute as @s[scores={cppTemperature=0,cppPressure=1}] run function cpp:all_in_one_machine/dist/ln
execute as @s[scores={cppTemperature=0,cppPressure=2}] run function cpp:all_in_one_machine/dist/lh
execute as @s[scores={cppTemperature=1,cppPressure=0}] run function cpp:all_in_one_machine/dist/nl
execute as @s[scores={cppTemperature=1,cppPressure=1}] run function cpp:all_in_one_machine/dist/nn
execute as @s[scores={cppTemperature=1,cppPressure=2}] run function cpp:all_in_one_machine/dist/nh
execute as @s[scores={cppTemperature=2,cppPressure=0}] run function cpp:all_in_one_machine/dist/hl
execute as @s[scores={cppTemperature=2,cppPressure=1}] run function cpp:all_in_one_machine/dist/hn
execute as @s[scores={cppTemperature=2,cppPressure=2}] run function cpp:all_in_one_machine/dist/hh

execute if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:firework_star",tag:{CustomModelData:12971000}}] run replaceitem block ~ ~ ~ container.6 air
