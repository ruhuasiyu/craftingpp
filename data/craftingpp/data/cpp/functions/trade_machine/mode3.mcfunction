loot replace block ~ ~ ~ container.15 1 loot cpp:trade_machine/type
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:15b}].tag.cppTradeValue
scoreboard players operation @s cppTradeValue += #temp cppValue
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 0.99 run data get block ~ ~ ~ Items[{Slot:11b}].Count
replaceitem block ~ ~ ~ container.15 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12971000}
