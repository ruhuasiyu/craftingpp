# 检测GUI
execute unless predicate cpp:crafting_machine/gui run function cpp:crafting_machine/gui
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
# 合成
execute unless predicate cpp:redstone_power if data block ~ ~ ~ Items[{Slot:16b,tag:{cpp_clear:1b}}] run function cpp:crafting_machine/check
# 物品输出
execute unless data block ~ ~ ~ Items[{Slot:16b,tag:{cpp_clear:1b}}] run function cpp:crafting_machine/dist16
