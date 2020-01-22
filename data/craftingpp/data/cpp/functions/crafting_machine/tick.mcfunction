# 检测GUI
execute unless predicate cpp:crafting_machine/gui run function cpp:crafting_machine/gui
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
# 合成
function cpp:check_power
execute as @s[tag=!cpp_redstone_powered] if data block ~ ~ ~ Items[{Slot:16b,tag:{cppClear:1b}}] run function cpp:crafting_machine/check
# 物品输出
execute unless data block ~ ~ ~ Items[{Slot:16b,tag:{cppClear:1b}}] run function cpp:crafting_machine/dist16
