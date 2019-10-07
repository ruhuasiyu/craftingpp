execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:rabbit_hide"}] run replaceitem block ~ ~ ~ container.15 minecraft:leather
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:snowball"}] run replaceitem block ~ ~ ~ container.15 minecraft:snow_block
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:glowstone_dust"}] run replaceitem block ~ ~ ~ container.15 minecraft:glowstone
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:clay_ball"}] run replaceitem block ~ ~ ~ container.15 minecraft:clay
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:quartz"}] run replaceitem block ~ ~ ~ container.15 minecraft:quartz_block
execute if data block ~ ~ ~ Items[{Slot:15b}] run scoreboard players remove #temp cppValue 3
execute if score #temp cppValue matches 9.. run function cpp:item_processer/type_piston9
