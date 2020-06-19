# 检测GUI
execute unless predicate cpp:all_in_one_machine/gui run function cpp:all_in_one_machine/gui
execute unless data block ~ ~ ~ Items[{Slot:21b}] run replaceitem block ~ ~ ~ container.21 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
execute unless data block ~ ~ ~ Items[{Slot:22b}] run replaceitem block ~ ~ ~ container.22 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
execute as @s[tag=!cpp_machine_work] run data modify block ~ ~ ~ Items[{Slot:12b}].tag.CustomModelData set value 12971080
execute as @s[tag=!cpp_machine_work] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 12970001
execute if score @s cppStoredxp matches ..91 if predicate cpp:all_in_one_machine/xp6 run function cpp:misc/xp_add
tag @s remove cpp_machine_work
# 配方
execute unless predicate cpp:redstone_power as @s[tag=!cpp_redstone_powered,scores={cppStoredxp=1..}] if predicate cpp:all_in_one_machine/type run function cpp:all_in_one_machine/type
execute unless data block ~ ~ ~ Items[{Slot:21b,tag:{cpp_clear:1b}}] run function cpp:all_in_one_machine/dist21
execute unless data block ~ ~ ~ Items[{Slot:22b,tag:{cpp_clear:1b}}] run function cpp:all_in_one_machine/dist22
scoreboard players set @s[tag=!cpp_machine_work] cppTick 0
