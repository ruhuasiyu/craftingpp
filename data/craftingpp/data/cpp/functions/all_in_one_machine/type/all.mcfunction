replaceitem block ~ ~ ~ container.21 minecraft:air
replaceitem block ~ ~ ~ container.22 minecraft:air
execute as @s[scores={cppTemperature=0,cppPressure=0}] run function cpp:all_in_one_machine/type/ll
execute as @s[scores={cppTemperature=0,cppPressure=1}] run function cpp:all_in_one_machine/type/ln
execute as @s[scores={cppTemperature=0,cppPressure=2}] run function cpp:all_in_one_machine/type/lh
execute as @s[scores={cppTemperature=1,cppPressure=0,cppStoredxp=4..}] run function cpp:all_in_one_machine/type/nl
execute as @s[scores={cppTemperature=1,cppPressure=1,cppStoredxp=2..}] run function cpp:all_in_one_machine/type/nn
execute as @s[scores={cppTemperature=1,cppPressure=2}] run function cpp:all_in_one_machine/type/nh
execute as @s[scores={cppTemperature=2,cppPressure=0,cppStoredxp=4..}] run function cpp:all_in_one_machine/type/hl
execute as @s[scores={cppTemperature=2,cppPressure=1}] run function cpp:all_in_one_machine/type/hn
execute as @s[scores={cppTemperature=2,cppPressure=2,cppStoredxp=4..}] run function cpp:all_in_one_machine/type/hh
# 接口
execute if data block ~ ~ ~ Items[{Slot:21b}] run function cpp:all_in_one_machine/clear
execute unless data block ~ ~ ~ Items[{Slot:21b}] run replaceitem block ~ ~ ~ container.21 minecraft:petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_slot\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:22b}] run replaceitem block ~ ~ ~ container.22 minecraft:petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_slot\"}"},CustomModelData:12971000}
