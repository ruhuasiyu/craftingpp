execute unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run replaceitem block ~ ~ ~ container.0 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971030}
execute unless block ~ ~ ~ barrel{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:2b}]} run replaceitem block ~ ~ ~ container.2 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:4b}]} run replaceitem block ~ ~ ~ container.4 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:5b}]} run replaceitem block ~ ~ ~ container.5 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:6b}]} run replaceitem block ~ ~ ~ container.6 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:7b}]} run replaceitem block ~ ~ ~ container.7 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run replaceitem block ~ ~ ~ container.8 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}

execute unless block ~ ~ ~ barrel{Items:[{Slot:9b}]} run replaceitem block ~ ~ ~ container.9 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:10b}]} run function cpp:item_processer/output
execute unless block ~ ~ ~ barrel{Items:[{Slot:11b}]} run replaceitem block ~ ~ ~ container.11 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:13b}]} run replaceitem block ~ ~ ~ container.13 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:14b}]} run replaceitem block ~ ~ ~ container.14 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:15b}]} run replaceitem block ~ ~ ~ container.15 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run replaceitem block ~ ~ ~ container.16 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:17b}]} run replaceitem block ~ ~ ~ container.17 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}

execute unless block ~ ~ ~ barrel{Items:[{Slot:18b}]} run replaceitem block ~ ~ ~ container.18 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:19b}]} run replaceitem block ~ ~ ~ container.19 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:20b}]} run replaceitem block ~ ~ ~ container.20 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:21b}]} run replaceitem block ~ ~ ~ container.21 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:22b}]} run replaceitem block ~ ~ ~ container.22 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:23b}]} run replaceitem block ~ ~ ~ container.23 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:24b}]} run replaceitem block ~ ~ ~ container.24 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:25b}]} run replaceitem block ~ ~ ~ container.25 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:26b}]} run replaceitem block ~ ~ ~ container.26 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}

function cpp:check_power
execute as @s[tag=!cpp_redstone_powered,tag=cpp_wait_output] run function cpp:item_processer/done
execute as @s[tag=!cpp_redstone_powered,tag=!cpp_wait_output] if data block ~ ~ ~ Items[{Slot:3b}] if data block ~ ~ ~ Items[{Slot:12b}] run function cpp:item_processer/type

scoreboard players reset @s cppMacType
