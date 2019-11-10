tellraw @s [{"translate":"info.cpp.high_temperature_plugin"}]
tag @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:all_in_one_machine"}}]},distance=..0.5,limit=1,tag=!cpp_high_temperature] add cpp_high_temperature
replaceitem entity @s[gamemode=!creative,nbt=!{SelectedItem:{tag:{MachinePlugin:1b}}}] weapon.offhand air
replaceitem entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{MachinePlugin:1b}}}] weapon.mainhand air
