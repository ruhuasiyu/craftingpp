# 检测GUI
execute unless predicate cpp:item_processer/gui run function cpp:item_processer/gui
execute unless data block ~ ~ ~ Items[{Slot:15b}] run replaceitem block ~ ~ ~ container.15 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
# 配方
execute unless predicate cpp:redstone_power if block ~ ~ ~ barrel{Items:[{Slot:3b},{Slot:12b},{Slot:15b,tag:{cpp_clear:1b}},{Slot:16b,tag:{cpp_clear:1b}}]} run function cpp:item_processer/type
# 物品输出
execute unless data block ~ ~ ~ Items[{Slot:15b,tag:{cpp_clear:1b}}] run function cpp:item_processer/dist15
execute unless data block ~ ~ ~ Items[{Slot:16b,tag:{cpp_clear:1b}}] run function cpp:item_processer/dist16
