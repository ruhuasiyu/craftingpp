execute unless data block ~ ~ ~ Items[{Slot:0b}] run replaceitem block ~ ~ ~ container.0 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971016}
execute unless data block ~ ~ ~ Items[{Slot:1b}] run replaceitem block ~ ~ ~ container.1 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:2b}] run replaceitem block ~ ~ ~ container.2 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:3b}] run replaceitem block ~ ~ ~ container.3 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:4b}] run replaceitem block ~ ~ ~ container.4 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:5b}] run replaceitem block ~ ~ ~ container.5 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:6b}] run replaceitem block ~ ~ ~ container.6 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:7b}] run replaceitem block ~ ~ ~ container.7 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:8b}] run replaceitem block ~ ~ ~ container.8 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}

execute unless data block ~ ~ ~ Items[{Slot:9b}] run replaceitem block ~ ~ ~ container.9 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:10b}] run replaceitem block ~ ~ ~ container.10 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:11b}] run replaceitem block ~ ~ ~ container.11 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:15b}] run replaceitem block ~ ~ ~ container.15 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:17b}] run replaceitem block ~ ~ ~ container.17 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}

execute unless data block ~ ~ ~ Items[{Slot:18b}] run replaceitem block ~ ~ ~ container.18 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:19b}] run replaceitem block ~ ~ ~ container.19 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:20b}] run replaceitem block ~ ~ ~ container.20 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:21b}] run replaceitem block ~ ~ ~ container.21 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:22b}] run replaceitem block ~ ~ ~ container.22 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:23b}] run replaceitem block ~ ~ ~ container.23 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:24b}] run replaceitem block ~ ~ ~ container.24 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:25b}] run replaceitem block ~ ~ ~ container.25 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:26b}] run replaceitem block ~ ~ ~ container.26 light_gray_stained_glass_pane{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.bookshelf\"}"},CustomModelData:12971000}

scoreboard players set #temp cppValue 12970010
execute if data block ~ ~ ~ Items[{Slot:12b}] run scoreboard players add #temp cppValue 4
execute if data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players add #temp cppValue 2
execute if data block ~ ~ ~ Items[{Slot:14b}] run scoreboard players add #temp cppValue 1

execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #temp cppValue

execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:book",Count:1b}] if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:book",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:book",Count:1b}] run kill @s
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:book",Count:1b}] if data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:book",Count:1b}] if data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:book",Count:1b}] run setblock ~ ~ ~ bookshelf
