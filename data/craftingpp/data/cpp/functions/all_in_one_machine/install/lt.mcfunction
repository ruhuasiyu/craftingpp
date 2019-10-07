tellraw @s [{"translate":"info.cpp.low_temperature_plugin"}]
clear @s firework_star{id:"cpp:low_temperature_plugin"} 1
tag @e[type=minecraft:armor_stand,nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:all_in_one_machine"}}]},distance=..0.5,limit=1,tag=!cpp_low_temperature] add cpp_low_temperature
function cpp:close_gui
