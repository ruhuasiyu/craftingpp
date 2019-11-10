loot replace block ~ ~ ~ container.15 1 loot cpp:trade_machine/type
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:15b}].tag.cppTradeValue
replaceitem block ~ ~ ~ container.15 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12971000}
execute if score #temp cppValue matches 2.. if score @s cppTradeValue >= #temp cppValue run function cpp:trade_machine/create
