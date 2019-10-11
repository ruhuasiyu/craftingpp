execute if data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b,tag:{isMachineBg:1b}}] run function cpp:all_in_one_machine/dist21
execute if data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b,tag:{isMachineBg:1b}}] run function cpp:all_in_one_machine/dist22

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

tag @s remove cpp_machine_work
function cpp_block:check_power
execute as @s[tag=!cpp_block_redstone_powered] if data block ~ ~ ~ Items[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:experience_bottle"}] run tag @s add cpp_block_redstone_powered
execute as @s[tag=!cpp_block_redstone_powered,scores={cppStoredxp=1..}] if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,tag:{isMachineBg:1b}},{Slot:1b,tag:{isMachineBg:1b}},{Slot:2b,tag:{isMachineBg:1b}},{Slot:3b},{Slot:4b},{Slot:5b,tag:{isMachineBg:1b}},{Slot:7b,tag:{isMachineBg:1b}},{Slot:8b,tag:{isMachineBg:1b}},{Slot:9b,tag:{isMachineBg:1b}},{Slot:10b,tag:{isMachineBg:1b}},{Slot:11b,tag:{isMachineBg:1b}},{Slot:12b,tag:{isMachineBg:1b}},{Slot:13b,tag:{isMachineBg:1b}},{Slot:14b,tag:{isMachineBg:1b}},{Slot:15b,tag:{isMachineBg:1b}},{Slot:16b,tag:{isMachineBg:1b}},{Slot:17b,tag:{isMachineBg:1b}},{Slot:18b,tag:{isMachineBg:1b}},{Slot:19b,tag:{isMachineBg:1b}},{Slot:20b,tag:{isMachineBg:1b}},{Slot:21b,tag:{isMachineBg:1b}},{Slot:22b,tag:{isMachineBg:1b}},{Slot:23b,tag:{isMachineBg:1b}},{Slot:24b,tag:{isMachineBg:1b}},{Slot:25b,tag:{isMachineBg:1b}},{Slot:26b,tag:{isMachineBg:1b}}]} run function cpp:all_in_one_machine/type/all
scoreboard players reset @s[tag=!cpp_machine_work] cppTick
data modify entity @s[tag=cpp_machine_work] ArmorItems[3].tag.CustomModelData set value 12971001
data modify entity @s[tag=!cpp_machine_work] ArmorItems[3].tag.CustomModelData set value 12970001
