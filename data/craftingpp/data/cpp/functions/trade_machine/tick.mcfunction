# 检测GUI
execute unless predicate cpp:trade_machine/gui run function cpp:trade_machine/gui
execute unless data block ~ ~ ~ Items[{Slot:15b}] run replaceitem block ~ ~ ~ container.15 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12971000}
# 合成
function cpp:check_power
execute as @s[tag=!cpp_redstone_powered] if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{cppMachineBg:1b}},{Slot:16b,tag:{cppMachineBg:1b}}]} run function cpp:trade_machine/check
# 物品输出
execute unless data block ~ ~ ~ Items[{Slot:15b,tag:{cppMachineBg:1b}}] run function cpp:trade_machine/dist15
execute unless data block ~ ~ ~ Items[{Slot:16b,tag:{cppMachineBg:1b}}] run function cpp:trade_machine/dist16
