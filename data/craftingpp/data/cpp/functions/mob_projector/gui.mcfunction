setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
data remove block ~ 255 ~ Items[{tag:{cppClear:1b}}]
data remove block ~ 255 ~ Items[{Slot:4b}]
data remove block ~ 255 ~ Items[{Slot:6b}]
data remove block ~ 255 ~ Items[{Slot:13b}]
data remove block ~ 255 ~ Items[{Slot:22b}]
loot give @p mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
replaceitem block ~ ~ ~ container.0 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12971006}
replaceitem block ~ ~ ~ container.1 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12971009}
replaceitem block ~ ~ ~ container.2 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12971010}
replaceitem block ~ ~ ~ container.3 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12971007}
replaceitem block ~ ~ ~ container.5 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.7 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12971008}
replaceitem block ~ ~ ~ container.8 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.xp_bar"}',Lore:['"§a0/48"']},CustomModelData:12972102}

replaceitem block ~ ~ ~ container.9 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.10 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.11 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.12 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.14 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.15 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.16 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.17 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.xp_bar"}',Lore:['"§a0/48"']},CustomModelData:12972000}

replaceitem block ~ ~ ~ container.18 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.19 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.20 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.21 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.23 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.24 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.25 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.mob_projector"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.26 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.xp_bar"}',Lore:['"§a0/48"']},CustomModelData:12972101}
function cpp:misc/xp_show
