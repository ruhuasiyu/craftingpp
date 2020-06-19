execute as @s[scores={cppTemperature=0,cppPressure=0}] run function cpp:all_in_one_machine/recipes/ll
execute as @s[scores={cppTemperature=0,cppPressure=1}] run function cpp:all_in_one_machine/recipes/ln
execute as @s[scores={cppTemperature=0,cppPressure=2}] run function cpp:all_in_one_machine/recipes/lh
execute as @s[scores={cppTemperature=1,cppPressure=0,cppStoredxp=4..}] run function cpp:all_in_one_machine/recipes/nl
execute as @s[scores={cppTemperature=1,cppPressure=1,cppStoredxp=2..}] run function cpp:all_in_one_machine/recipes/nn
execute as @s[scores={cppTemperature=1,cppPressure=2}] run function cpp:all_in_one_machine/recipes/nh
execute as @s[scores={cppTemperature=2,cppPressure=0,cppStoredxp=4..}] run function cpp:all_in_one_machine/recipes/hl
execute as @s[scores={cppTemperature=2,cppPressure=1}] run function cpp:all_in_one_machine/recipes/hn
execute as @s[scores={cppTemperature=2,cppPressure=2,cppStoredxp=4..}] run function cpp:all_in_one_machine/recipes/hh
function #cpp:all_in_one_machine
execute unless data block ~ ~ ~ Items[{Slot:21b,tag:{cpp_clear:1b}}] run function cpp:all_in_one_machine/clear
execute as @s[scores={cppTick=1..}] run function cpp:all_in_one_machine/option/process
data modify entity @s[tag=cpp_machine_work] ArmorItems[3].tag.CustomModelData set value 12970101
