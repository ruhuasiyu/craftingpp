execute if data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{isMachineBg:1b}}] run function cpp:item_processer/dist15
execute if data block ~ ~ ~ Items[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:16b,tag:{isMachineBg:1b}}] run function cpp:item_processer/dist16

execute unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run replaceitem block ~ ~ ~ container.0 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971009}
execute unless block ~ ~ ~ barrel{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:2b}]} run replaceitem block ~ ~ ~ container.2 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:4b}]} run replaceitem block ~ ~ ~ container.4 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:5b}]} run replaceitem block ~ ~ ~ container.5 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:6b}]} run replaceitem block ~ ~ ~ container.6 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:7b}]} run replaceitem block ~ ~ ~ container.7 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:8b}]} run replaceitem block ~ ~ ~ container.8 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}

execute unless block ~ ~ ~ barrel{Items:[{Slot:9b}]} run replaceitem block ~ ~ ~ container.9 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:10b}]} run replaceitem block ~ ~ ~ container.10 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:11b}]} run replaceitem block ~ ~ ~ container.11 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:13b}]} run replaceitem block ~ ~ ~ container.13 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:14b}]} run replaceitem block ~ ~ ~ container.14 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:15b}]} run replaceitem block ~ ~ ~ container.15 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run replaceitem block ~ ~ ~ container.16 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:17b}]} run replaceitem block ~ ~ ~ container.17 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}

execute unless block ~ ~ ~ barrel{Items:[{Slot:18b}]} run replaceitem block ~ ~ ~ container.18 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:19b}]} run replaceitem block ~ ~ ~ container.19 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:20b}]} run replaceitem block ~ ~ ~ container.20 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:21b}]} run replaceitem block ~ ~ ~ container.21 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:22b}]} run function cpp:item_processer/output
execute unless block ~ ~ ~ barrel{Items:[{Slot:23b}]} run function cpp:item_processer/output1
execute unless block ~ ~ ~ barrel{Items:[{Slot:24b}]} run replaceitem block ~ ~ ~ container.24 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:25b}]} run replaceitem block ~ ~ ~ container.25 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:26b}]} run replaceitem block ~ ~ ~ container.26 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.item_processer\"}"},CustomModelData:12971000}

function cpp:check_power
execute as @s[tag=!cpp_redstone_powered] if block ~ ~ ~ barrel{Items:[{Slot:3b},{Slot:12b},{Slot:16b,tag:{isMachineBg:1b}},{Slot:17b,tag:{isMachineBg:1b}}]} run function cpp:item_processer/type