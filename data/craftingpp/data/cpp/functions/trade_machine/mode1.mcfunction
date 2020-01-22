loot replace block ~ ~ ~ container.15 1 loot cpp:trade_machine/type
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:15b}].tag.cppTradeValue
scoreboard players operation @s cppTradeValue += #temp cppValue
execute if score #temp cppValue matches 1.. store result block ~ ~ ~ Items[{Slot:11b}].Count byte 0.99 run data get block ~ ~ ~ Items[{Slot:11b}].Count
replaceitem block ~ ~ ~ container.15 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
execute if score #temp cppValue matches 1.. run function cpp:misc/value_show
