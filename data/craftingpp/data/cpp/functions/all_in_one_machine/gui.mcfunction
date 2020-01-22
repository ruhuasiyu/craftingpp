setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
data remove block ~ 255 ~ Items[{tag:{cppClear:1b}}]
data remove block ~ 255 ~ Items[{Slot:3b}]
data remove block ~ 255 ~ Items[{Slot:4b}]
data remove block ~ 255 ~ Items[{Slot:6b}]
data remove block ~ 255 ~ Items[{Slot:21b}]
data remove block ~ 255 ~ Items[{Slot:22b}]
loot give @p mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air

replaceitem block ~ ~ ~ container.0 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971003}
replaceitem block ~ ~ ~ container.5 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971004}
replaceitem block ~ ~ ~ container.7 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971005}
replaceitem block ~ ~ ~ container.8 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.xp_bar"}',Lore:['"§a0/100"']},CustomModelData:12972102}
replaceitem block ~ ~ ~ container.9 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.12 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.process_shower"}'},CustomModelData:12971080}
replaceitem block ~ ~ ~ container.13 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.process_shower"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.14 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.15 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.16 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.17 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.xp_bar"}',Lore:['"§a0/100"']},CustomModelData:12972000}
replaceitem block ~ ~ ~ container.18 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.23 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.24 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.25 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.26 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.xp_bar"}',Lore:['"§a0/100"']},CustomModelData:12972101}

execute unless data block ~ ~ ~ Items[{Slot:1b}] run function cpp:all_in_one_machine/option/pressure
execute as @s[scores={cppPressure=0}] run replaceitem block ~ ~ ~ container.1 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.low_pressure"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppPressure=1}] run replaceitem block ~ ~ ~ container.1 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.normal_pressure"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppPressure=2}] run replaceitem block ~ ~ ~ container.1 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.high_pressure"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppPressure=0}] run replaceitem block ~ ~ ~ container.2 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971051}
execute as @s[scores={cppPressure=1}] run replaceitem block ~ ~ ~ container.2 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971052}
execute as @s[scores={cppPressure=2}] run replaceitem block ~ ~ ~ container.2 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971053}

execute unless data block ~ ~ ~ Items[{Slot:10b}] run function cpp:all_in_one_machine/option/temperature
execute as @s[scores={cppTemperature=0}] run replaceitem block ~ ~ ~ container.10 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.low_temperature"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppTemperature=1}] run replaceitem block ~ ~ ~ container.10 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.normal_temperature"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppTemperature=2}] run replaceitem block ~ ~ ~ container.10 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.high_temperature"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppTemperature=0}] run replaceitem block ~ ~ ~ container.11 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971054}
execute as @s[scores={cppTemperature=1}] run replaceitem block ~ ~ ~ container.11 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971055}
execute as @s[scores={cppTemperature=2}] run replaceitem block ~ ~ ~ container.11 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971056}

execute unless data block ~ ~ ~ Items[{Slot:19b}] run function cpp:all_in_one_machine/option/output
execute as @s[scores={cppOutputFace=1}] run replaceitem block ~ ~ ~ container.19 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.output_east"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppOutputFace=2}] run replaceitem block ~ ~ ~ container.19 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.output_south"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppOutputFace=3}] run replaceitem block ~ ~ ~ container.19 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.output_west"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppOutputFace=4}] run replaceitem block ~ ~ ~ container.19 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.output_north"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppOutputFace=5}] run replaceitem block ~ ~ ~ container.19 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.output_down"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppOutputFace=6}] run replaceitem block ~ ~ ~ container.19 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.output_up"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppOutputFace=1}] run replaceitem block ~ ~ ~ container.20 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971041}
execute as @s[scores={cppOutputFace=2}] run replaceitem block ~ ~ ~ container.20 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971042}
execute as @s[scores={cppOutputFace=3}] run replaceitem block ~ ~ ~ container.20 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971043}
execute as @s[scores={cppOutputFace=4}] run replaceitem block ~ ~ ~ container.20 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971044}
execute as @s[scores={cppOutputFace=5}] run replaceitem block ~ ~ ~ container.20 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971045}
execute as @s[scores={cppOutputFace=6}] run replaceitem block ~ ~ ~ container.20 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.all_in_one_machine"}'},CustomModelData:12971046}

function cpp:misc/xp_show
