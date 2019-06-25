execute unless data block ~ ~ ~ Items[{Slot:0b}] run replaceitem block ~ ~ ~ container.0 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971016}
execute unless data block ~ ~ ~ Items[{Slot:1b}] run replaceitem block ~ ~ ~ container.1 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:2b}] run replaceitem block ~ ~ ~ container.2 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:3b}] run replaceitem block ~ ~ ~ container.3 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:4b}] run replaceitem block ~ ~ ~ container.4 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:5b}] run replaceitem block ~ ~ ~ container.5 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:6b}] run replaceitem block ~ ~ ~ container.6 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:7b}] run replaceitem block ~ ~ ~ container.7 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:8b}] run replaceitem block ~ ~ ~ container.8 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}

execute unless data block ~ ~ ~ Items[{Slot:9b}] run replaceitem block ~ ~ ~ container.9 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:10b}] run replaceitem block ~ ~ ~ container.10 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:11b}] run replaceitem block ~ ~ ~ container.11 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:15b}] run replaceitem block ~ ~ ~ container.15 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:17b}] run replaceitem block ~ ~ ~ container.17 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}

execute unless data block ~ ~ ~ Items[{Slot:18b}] run replaceitem block ~ ~ ~ container.18 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:19b}] run replaceitem block ~ ~ ~ container.19 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:20b}] run replaceitem block ~ ~ ~ container.20 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:21b}] run replaceitem block ~ ~ ~ container.21 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:22b}] run replaceitem block ~ ~ ~ container.22 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:23b}] run replaceitem block ~ ~ ~ container.23 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:24b}] run replaceitem block ~ ~ ~ container.24 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:25b}] run replaceitem block ~ ~ ~ container.25 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:26b}] run replaceitem block ~ ~ ~ container.26 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}

scoreboard players set #temp cppValue 12970010
execute if data block ~ ~ ~ Items[{Slot:12b}] run scoreboard players add #temp cppValue 4
execute if data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players add #temp cppValue 2
execute if data block ~ ~ ~ Items[{Slot:14b}] run scoreboard players add #temp cppValue 1

execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #temp cppValue

execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:book",Count:1b}] if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:book",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:book",Count:1b}] run kill @s
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:book",Count:1b}] if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:book",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:book",Count:1b}] run setblock ~ ~ ~ bookshelf
