execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:wheat"}] run replaceitem block ~ ~ ~ container.15 hay_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:melon_slice"}] run replaceitem block ~ ~ ~ container.15 melon
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:dried_kelp"}] run replaceitem block ~ ~ ~ container.15 dried_kelp_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:nether_wart"}] run replaceitem block ~ ~ ~ container.15 nether_wart_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:slime_ball"}] run replaceitem block ~ ~ ~ container.15 slime_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:bone_meal"}] run replaceitem block ~ ~ ~ container.15 bone_block
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:splint"}}] run replaceitem block ~ ~ ~ container.15 diamond
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:coal"}] run replaceitem block ~ ~ ~ container.15 coal_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:iron_ingot"}] run replaceitem block ~ ~ ~ container.15 iron_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:gold_ingot"}] run replaceitem block ~ ~ ~ container.15 gold_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:redstone"}] run replaceitem block ~ ~ ~ container.15 redstone_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:lapis_lazuli"}] run replaceitem block ~ ~ ~ container.15 lapis_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:diamond"}] run replaceitem block ~ ~ ~ container.15 diamond_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:emerald"}] run replaceitem block ~ ~ ~ container.15 emerald_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:iron_nugget"}] run replaceitem block ~ ~ ~ container.15 iron_ingot
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:gold_nugget"}] run replaceitem block ~ ~ ~ container.15 gold_ingot
execute unless data block ~ ~ ~ Items[{Slot:15b,cppMachineBg:1b}] run scoreboard players remove #temp cppValue 8