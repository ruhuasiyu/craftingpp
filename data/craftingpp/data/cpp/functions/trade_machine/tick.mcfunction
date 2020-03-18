# 检测GUI
execute unless predicate cpp:trade_machine/gui run function cpp:trade_machine/gui
execute unless data block ~ ~ ~ Items[{Slot:15b}] run replaceitem block ~ ~ ~ container.15 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
# 配方
execute unless predicate cpp:redstone_power if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{cppClear:1b}},{Slot:16b,tag:{cppClear:1b}}]} run function cpp:trade_machine/check
# 物品输出
execute unless data block ~ ~ ~ Items[{Slot:15b,tag:{cppClear:1b}}] run function cpp:trade_machine/dist15
