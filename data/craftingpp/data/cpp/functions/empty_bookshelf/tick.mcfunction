# 检测GUI
execute unless predicate cpp:empty_bookshelf/gui run function cpp:empty_bookshelf/gui
# 外观
scoreboard players set #temp cppValue 12970010
execute if data block ~ ~ ~ Items[{Slot:12b}] run scoreboard players add #temp cppValue 4
execute if data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players add #temp cppValue 2
execute if data block ~ ~ ~ Items[{Slot:14b}] run scoreboard players add #temp cppValue 1
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #temp cppValue
# 转变为书架
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:book",Count:1b},{Slot:13b,id:"minecraft:book",Count:1b},{Slot:14b,id:"minecraft:book",Count:1b}]} run function cpp:empty_bookshelf/change
