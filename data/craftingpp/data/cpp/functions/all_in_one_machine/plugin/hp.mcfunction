tellraw @s [{"translate":"info.cpp.high_pressure_plugin"}]
tag @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:all_in_one_machine"}}]},distance=..0.5,limit=1,tag=!cpp_high_pressure] add cpp_high_pressure
replaceitem entity @s[gamemode=!creative,nbt=!{SelectedItem:{tag:{MachinePlugin:1b}}}] weapon.offhand air
replaceitem entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{MachinePlugin:1b}}}] weapon.mainhand air
