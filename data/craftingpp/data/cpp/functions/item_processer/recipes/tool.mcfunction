loot replace block ~ ~ ~ container.15 2 loot cpp:item_processer/tool
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:3b}].tag.Damage
execute store result block ~ ~ ~ Items[{Slot:3b}].tag.Damage int 1 run scoreboard players add #t cppValue 1
execute if predicate cpp:item_processer/broken_tool run replaceitem block ~ ~ ~ container.3 air
execute store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run scoreboard players remove #temp cppValue 1
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12971000}
