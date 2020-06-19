loot replace block ~ ~ ~ container.15 1 loot cpp:trade_machine/type
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:15b}].tag.cppTradeValue
execute store result score #s cppValue run data get block ~ ~ ~ Items[{Slot:11b}].Count
scoreboard players operation #temp cppValue *= #s cppValue
scoreboard players operation @s cppTradeValue += #temp cppValue
execute if score #temp cppValue matches 1.. run data remove block ~ ~ ~ Items[{Slot:11b}]
replaceitem block ~ ~ ~ container.15 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
execute if score #temp cppValue matches 1.. run function cpp:misc/value_show
