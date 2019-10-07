replaceitem block ~ ~ ~ container.15 air
replaceitem block ~ ~ ~ container.16 air
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:diamond"}] run replaceitem block ~ ~ ~ container.15 minecraft:emerald 4
execute if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:enchanted_book"}] run replaceitem block ~ ~ ~ container.15 minecraft:emerald
execute if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:compass"}] run replaceitem block ~ ~ ~ container.15 minecraft:emerald
execute if score #temp cppValue matches 4.. run function cpp:trade_machine/type4
execute if score #temp cppValue matches 8.. run function cpp:trade_machine/type8
execute if score #temp cppValue matches 16.. run function cpp:trade_machine/type16
execute if score #temp cppValue matches 32.. run function cpp:trade_machine/type32
execute if score #temp cppValue matches 48.. run function cpp:trade_machine/type48
execute if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:emerald"}] run replaceitem block ~ ~ ~ container.15 minecraft:experience_bottle
execute if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:emerald"}] run scoreboard players remove @s cppStoredxp 2
# 接口
function #cpp:trade_machine
execute if data block ~ ~ ~ Items[{Slot:15b}] run function cpp:trade_machine/done
execute unless block ~ ~ ~ barrel{Items:[{Slot:15b}]} run replaceitem block ~ ~ ~ container.15 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_slot\"}"},CustomModelData:12971000}
execute unless block ~ ~ ~ barrel{Items:[{Slot:16b}]} run replaceitem block ~ ~ ~ container.16 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_slot\"}"},CustomModelData:12971000}
