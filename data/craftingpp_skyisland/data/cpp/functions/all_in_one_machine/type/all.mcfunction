# 接口
function #cpp:all_in_one_machine

execute as @s[scores={cppTemperature=0,cppPressure=0}] run function cpp:all_in_one_machine/type/ll
execute as @s[scores={cppTemperature=0,cppPressure=1}] run function cpp:all_in_one_machine/type/ln
execute as @s[scores={cppTemperature=0,cppPressure=2}] run function cpp:all_in_one_machine/type/lh
execute as @s[scores={cppTemperature=1,cppPressure=0}] run function cpp:all_in_one_machine/type/nl
execute as @s[scores={cppTemperature=1,cppPressure=1}] run function cpp:all_in_one_machine/type/nn
execute as @s[scores={cppTemperature=1,cppPressure=2}] run function cpp:all_in_one_machine/type/nh
execute as @s[scores={cppTemperature=2,cppPressure=0}] run function cpp:all_in_one_machine/type/hl
execute as @s[scores={cppTemperature=2,cppPressure=1}] run function cpp:all_in_one_machine/type/hn
execute as @s[scores={cppTemperature=2,cppPressure=2}] run function cpp:all_in_one_machine/type/hh
