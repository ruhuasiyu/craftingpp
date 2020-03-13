loot replace block ~ ~ ~ container.15 1 loot cpp:item_processer/misc
execute if predicate cpp:item_processer/infinite_bucket run function cpp:item_processer/recipes/misc_infinite_bucket
execute store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run scoreboard players remove #temp cppValue 1
