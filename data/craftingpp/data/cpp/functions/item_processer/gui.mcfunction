setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
data remove block ~ 255 ~ Items[{tag:{cppMachineBg:1b}}]
data remove block ~ 255 ~ Items[{Slot:3b}]
data remove block ~ 255 ~ Items[{Slot:12b}]
data remove block ~ 255 ~ Items[{Slot:15b}]
data remove block ~ 255 ~ Items[{Slot:16b}]
loot give @p mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
replaceitem block ~ ~ ~ container.0 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971009}
replaceitem block ~ ~ ~ container.1 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.2 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.4 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.5 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.6 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.7 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.8 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}

replaceitem block ~ ~ ~ container.9 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.10 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.11 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.13 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.14 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.17 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}

replaceitem block ~ ~ ~ container.18 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.19 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.20 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.21 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.24 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.25 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}
replaceitem block ~ ~ ~ container.26 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971000}

execute unless data block ~ ~ ~ Items[{Slot:22b}] run function cpp:item_processer/output
execute as @s[scores={cppOutputFace=1}] run replaceitem block ~ ~ ~ container.22 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_east"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12971000}
execute as @s[scores={cppOutputFace=2}] run replaceitem block ~ ~ ~ container.22 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_south"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12971000}
execute as @s[scores={cppOutputFace=3}] run replaceitem block ~ ~ ~ container.22 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_west"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12971000}
execute as @s[scores={cppOutputFace=4}] run replaceitem block ~ ~ ~ container.22 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_north"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12971000}
execute as @s[scores={cppOutputFace=5}] run replaceitem block ~ ~ ~ container.22 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_down"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12971000}
execute as @s[scores={cppOutputFace=6}] run replaceitem block ~ ~ ~ container.22 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_up"}',Lore:['{"translate":"lore.cpp.switch"}']},CustomModelData:12971000}
execute as @s[scores={cppOutputFace=1}] run replaceitem block ~ ~ ~ container.23 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971041}
execute as @s[scores={cppOutputFace=2}] run replaceitem block ~ ~ ~ container.23 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971042}
execute as @s[scores={cppOutputFace=3}] run replaceitem block ~ ~ ~ container.23 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971043}
execute as @s[scores={cppOutputFace=4}] run replaceitem block ~ ~ ~ container.23 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971044}
execute as @s[scores={cppOutputFace=5}] run replaceitem block ~ ~ ~ container.23 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971045}
execute as @s[scores={cppOutputFace=6}] run replaceitem block ~ ~ ~ container.23 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.item_processer"}'},CustomModelData:12971046}
