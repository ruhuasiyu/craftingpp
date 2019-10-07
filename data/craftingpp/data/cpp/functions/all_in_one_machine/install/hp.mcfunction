tellraw @s [{"translate":"info.cpp.high_pressure_plugin"}]
clear @s firework_star{id:"cpp:high_pressure_plugin"} 1
tag @e[type=minecraft:armor_stand,nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:all_in_one_machine"}}]},distance=..0.5,limit=1,tag=!cpp_high_pressure] add cpp_high_pressure
function cpp:close_gui