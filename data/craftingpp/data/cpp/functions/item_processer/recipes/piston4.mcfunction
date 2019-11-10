execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:rabbit_hide"}] run replaceitem block ~ ~ ~ container.15 leather
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:snowball"}] run replaceitem block ~ ~ ~ container.15 snow_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:glowstone_dust"}] run replaceitem block ~ ~ ~ container.15 glowstone
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:clay_ball"}] run replaceitem block ~ ~ ~ container.15 clay
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:quartz"}] run replaceitem block ~ ~ ~ container.15 quartz_block
execute unless data block ~ ~ ~ Items[{Slot:15b,cppMachineBg:1b}] run scoreboard players remove #temp cppValue 3
execute if score #temp cppValue matches 9.. run function cpp:item_processer/type/piston9
