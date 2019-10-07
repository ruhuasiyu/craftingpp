execute if data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b,tag:{isMachineBg:1b}}] run function cpp:all_in_one_machine/dist

execute unless data block ~ ~ ~ Items[{Slot:0b}] run replaceitem block ~ ~ ~ container.0 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971011}
execute unless data block ~ ~ ~ Items[{Slot:1b}] run function cpp:all_in_one_machine/option/pressure
execute unless data block ~ ~ ~ Items[{Slot:2b}] run function cpp:all_in_one_machine/option/pressure1
# 输入
# 输入
execute unless data block ~ ~ ~ Items[{Slot:5b}] run replaceitem block ~ ~ ~ container.5 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971000}
# 附魔之瓶
execute unless data block ~ ~ ~ Items[{Slot:7b}] run replaceitem block ~ ~ ~ container.7 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:8b}] run replaceitem block ~ ~ ~ container.8 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.xp_bar\"}"},CustomModelData:12971000}

execute unless data block ~ ~ ~ Items[{Slot:9b}] run replaceitem block ~ ~ ~ container.9 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:10b}] run function cpp:all_in_one_machine/option/temperature
execute unless data block ~ ~ ~ Items[{Slot:11b}] run function cpp:all_in_one_machine/option/temperature1
execute unless data block ~ ~ ~ Items[{Slot:12b}] run replaceitem block ~ ~ ~ container.12 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},CustomModelData:12971020}
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{isMachineBg:1b}}] run replaceitem block ~ ~ ~ container.12 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},CustomModelData:12971020}
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{isMachineBg:1b}}] as @s[scores={cppTick=1..}] run function cpp:all_in_one_machine/option/process
execute unless data block ~ ~ ~ Items[{Slot:13b}] run replaceitem block ~ ~ ~ container.13 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.process_shower\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:14b}] run replaceitem block ~ ~ ~ container.14 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:15b}] run replaceitem block ~ ~ ~ container.15 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:17b}] run replaceitem block ~ ~ ~ container.17 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.xp_bar\"}"},CustomModelData:12971000}

execute unless data block ~ ~ ~ Items[{Slot:18b}] run replaceitem block ~ ~ ~ container.18 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:19b}] run function cpp:all_in_one_machine/option/output
execute unless data block ~ ~ ~ Items[{Slot:20b}] run function cpp:all_in_one_machine/option/output1
execute unless data block ~ ~ ~ Items[{Slot:21b}] run replaceitem block ~ ~ ~ container.21 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_slot\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:22b}] run replaceitem block ~ ~ ~ container.22 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_slot\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:23b}] run replaceitem block ~ ~ ~ container.23 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:24b}] run replaceitem block ~ ~ ~ container.24 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:25b}] run replaceitem block ~ ~ ~ container.25 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:26b}] run replaceitem block ~ ~ ~ container.26 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.xp_bar\"}"},CustomModelData:12971000}

function cpp:all_in_one_machine/option/xp

function cpp:check_power
execute as @s[tag=!cpp_redstone_powered] if data block ~ ~ ~ Items[{Slot:3b}] if data block ~ ~ ~ Items[{Slot:4b}] if data block ~ ~ ~ Items[{Slot:21b,tag:{isMachineBg:1b}}] if data block ~ ~ ~ Items[{Slot:22b,tag:{isMachineBg:1b}}] run function #cpp:all_in_one_machine

execute unless entity @s[scores={cppMacType=1..}] run scoreboard players reset @s cppTick
scoreboard players reset @s cppMacType
