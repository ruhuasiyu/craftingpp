execute as @s[nbt={SelectedItem:{tag:{id:"cpp:high_pressure_plugin"}}}] if entity @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_high_pressure] run tellraw @s [{"translate":"info.cpp.high_pressure_plugin"}]
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:high_pressure_plugin"}}}] if entity @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_high_pressure] run tag @s add cpp_plugin_used
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:high_pressure_plugin"}}}] as @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_high_pressure] run tag @s add cpp_high_pressure
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:high_pressure_plugin"}}}] run clear @s[tag=cpp_plugin_used] firework_star{id:"cpp:high_pressure_plugin"} 1

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:low_pressure_plugin"}}}] if entity @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_low_pressure] run tellraw @s [{"translate":"info.cpp.low_pressure_plugin"}]
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:low_pressure_plugin"}}}] if entity @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_low_pressure] run tag @s add cpp_plugin_used
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:low_pressure_plugin"}}}] as @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_low_pressure] run tag @s add cpp_low_pressure
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:low_pressure_plugin"}}}] run clear @s[tag=cpp_plugin_used] firework_star{id:"cpp:low_pressure_plugin"} 1

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:high_temperature_plugin"}}}] if entity @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_high_temperature] run tellraw @s [{"translate":"info.cpp.high_temperature_plugin"}]
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:high_temperature_plugin"}}}] if entity @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_high_temperature] run tag @s add cpp_plugin_used
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:high_temperature_plugin"}}}] as @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_high_temperature] run tag @s add cpp_high_temperature
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:high_temperature_plugin"}}}] run clear @s[tag=cpp_plugin_used] firework_star{id:"cpp:high_temperature_plugin"} 1

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:low_temperature_plugin"}}}] if entity @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_low_temperature] run tellraw @s [{"translate":"info.cpp.low_temperature_plugin"}]
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:low_temperature_plugin"}}}] if entity @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_low_temperature] run tag @s add cpp_plugin_used
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:low_temperature_plugin"}}}] as @e[tag=cpp_all_in_one_machine,distance=..0.5,limit=1,tag=!cpp_low_temperature] run tag @s add cpp_low_temperature
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:low_temperature_plugin"}}}] run clear @s[tag=cpp_plugin_used] firework_star{id:"cpp:low_temperature_plugin"} 1

execute as @s[tag=cpp_plugin_used] run function cpp:close_gui
tag @s[tag=cpp_plugin_used] remove cpp_plugin_used
