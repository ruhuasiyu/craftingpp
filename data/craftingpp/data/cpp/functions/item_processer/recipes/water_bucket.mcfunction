loot replace block ~ ~ ~ container.15 2 loot cpp:item_processer/water_bucket
execute if predicate cpp:item_processer/green_force_of_water run function cpp:item_processer/recipes/water_bucket_green_force_of_water
execute store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run scoreboard players remove #temp cppValue 1
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
