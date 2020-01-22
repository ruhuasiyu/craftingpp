loot replace block ~ ~ ~ container.15 1 loot cpp:trade_machine/type
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:15b}].tag.cppTradeValue 5
replaceitem block ~ ~ ~ container.15 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
execute if score #temp cppValue matches 10.. if score @s cppTradeValue >= #temp cppValue run function cpp:trade_machine/copy