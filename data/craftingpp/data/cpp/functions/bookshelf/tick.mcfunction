# 检测GUI
execute unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{cppMachineBg:1b}},{Slot:1b,tag:{cppMachineBg:1b}},{Slot:2b,tag:{cppMachineBg:1b}},{Slot:3b,tag:{cppMachineBg:1b}},{Slot:4b,tag:{cppMachineBg:1b}},{Slot:5b,tag:{cppMachineBg:1b}},{Slot:6b,tag:{cppMachineBg:1b}},{Slot:7b,tag:{cppMachineBg:1b}},{Slot:8b,tag:{cppMachineBg:1b}},{Slot:9b,tag:{cppMachineBg:1b}},{Slot:10b,tag:{cppMachineBg:1b}},{Slot:11b,tag:{cppMachineBg:1b}},{Slot:12b,tag:{cppMachineBg:1b}},{Slot:13b,tag:{cppMachineBg:1b}},{Slot:14b,tag:{cppMachineBg:1b}},{Slot:15b,tag:{cppMachineBg:1b}},{Slot:16b,tag:{cppMachineBg:1b}},{Slot:17b,tag:{cppMachineBg:1b}},{Slot:18b,tag:{cppMachineBg:1b}},{Slot:19b,tag:{cppMachineBg:1b}},{Slot:20b,tag:{cppMachineBg:1b}},{Slot:21b,tag:{cppMachineBg:1b}},{Slot:22b,tag:{cppMachineBg:1b}},{Slot:23b,tag:{cppMachineBg:1b}},{Slot:24b,tag:{cppMachineBg:1b}},{Slot:25b,tag:{cppMachineBg:1b}},{Slot:26b,tag:{cppMachineBg:1b}}]} run function cpp:bookshelf/reset
# 外观
scoreboard players set #temp cppValue 12970010
execute if data block ~ ~ ~ Items[{Slot:12b}] run scoreboard players add #temp cppValue 4
execute if data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players add #temp cppValue 2
execute if data block ~ ~ ~ Items[{Slot:14b}] run scoreboard players add #temp cppValue 1
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #temp cppValue
# 转变为书架
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:book",Count:1b},{Slot:13b,id:"minecraft:book",Count:1b},{Slot:14b,id:"minecraft:book",Count:1b}]} run function cpp:bookshelf/change
