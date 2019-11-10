tellraw @s [{"translate":"info.cpp.low_pressure_plugin"}]
tag @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:all_in_one_machine"}}]},distance=..0.5,limit=1,tag=!cpp_low_pressure] add cpp_low_pressure
replaceitem entity @s[gamemode=!creative,nbt=!{SelectedItem:{tag:{MachinePlugin:1b}}}] weapon.offhand air
replaceitem entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{MachinePlugin:1b}}}] weapon.mainhand air
