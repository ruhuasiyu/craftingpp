execute as @s[nbt={SelectedItem:{tag:{id:"cpp:high_pressure_plugin"}}}] if entity @e[type=minecraft:armor_stand,nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:all_in_one_machine"}}]},distance=..0.5,limit=1,tag=!cpp_high_pressure] run function cpp:all_in_one_machine/install/hp

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:low_pressure_plugin"}}}] if entity @e[type=minecraft:armor_stand,nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:all_in_one_machine"}}]},distance=..0.5,limit=1,tag=!cpp_low_pressure] run function cpp:all_in_one_machine/install/lp

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:high_temperature_plugin"}}}] if entity @e[type=minecraft:armor_stand,nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:all_in_one_machine"}}]},distance=..0.5,limit=1,tag=!cpp_high_temperature] run function cpp:all_in_one_machine/install/ht

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:low_temperature_plugin"}}}] if entity @e[type=minecraft:armor_stand,nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:all_in_one_machine"}}]},distance=..0.5,limit=1,tag=!cpp_low_temperature] run function cpp:all_in_one_machine/install/lt
