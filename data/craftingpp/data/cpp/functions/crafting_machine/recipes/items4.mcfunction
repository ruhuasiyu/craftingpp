execute if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:shulker_box"},{Slot:10b},{Slot:11b,tag:{id:"cpp:empty_golem"}},{Slot:12b}]} run function cpp:crafting_machine/recipes/items4_golem
execute if predicate cpp:crafting_machine/items4 run loot replace block ~ ~ ~ container.16 1 loot cpp:crafting_machine/items4
