loot replace block ~ ~ ~ container.15 2 loot cpp:item_processer/water_bucket
execute store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run scoreboard players remove #temp cppValue 1
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12971000}
