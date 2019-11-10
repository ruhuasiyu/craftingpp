# 检测GUI
execute unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{cppMachineBg:1b}},{Slot:1b,tag:{cppMachineBg:1b}},{Slot:2b,tag:{cppMachineBg:1b}},{Slot:4b,tag:{cppMachineBg:1b}},{Slot:5b,tag:{cppMachineBg:1b}},{Slot:6b,tag:{cppMachineBg:1b}},{Slot:7b,tag:{cppMachineBg:1b}},{Slot:8b,tag:{cppMachineBg:1b}},{Slot:9b,tag:{cppMachineBg:1b}},{Slot:10b,tag:{cppMachineBg:1b}},{Slot:11b,tag:{cppMachineBg:1b}},{Slot:13b,tag:{cppMachineBg:1b}},{Slot:14b,tag:{cppMachineBg:1b}},{Slot:17b,tag:{cppMachineBg:1b}},{Slot:18b,tag:{cppMachineBg:1b}},{Slot:19b,tag:{cppMachineBg:1b}},{Slot:20b,tag:{cppMachineBg:1b}},{Slot:21b,tag:{cppMachineBg:1b}},{Slot:22b,tag:{cppMachineBg:1b}},{Slot:23b,tag:{cppMachineBg:1b}},{Slot:24b,tag:{cppMachineBg:1b}},{Slot:25b,tag:{cppMachineBg:1b}},{Slot:26b,tag:{cppMachineBg:1b}}]} run function cpp:item_processer/reset
execute unless data block ~ ~ ~ Items[{Slot:15b}] run replaceitem block ~ ~ ~ container.15 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12971000}
# 配方
function cpp:check_power
execute as @s[tag=!cpp_redstone_powered] if block ~ ~ ~ barrel{Items:[{Slot:3b},{Slot:12b},{Slot:15b,tag:{cppMachineBg:1b}},{Slot:16b,tag:{cppMachineBg:1b}}]} run function cpp:item_processer/type
# 物品输出
execute unless data block ~ ~ ~ Items[{Slot:15b,tag:{cppMachineBg:1b}}] run function cpp:item_processer/dist15
execute unless data block ~ ~ ~ Items[{Slot:16b,tag:{cppMachineBg:1b}}] run function cpp:item_processer/dist16
