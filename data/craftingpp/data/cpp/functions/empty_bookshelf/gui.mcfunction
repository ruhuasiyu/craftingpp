# 弹出物品
setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
data remove block ~ 255 ~ Items[{tag:{cppClear:1b}}]
data remove block ~ 255 ~ Items[{Slot:12b}]
data remove block ~ 255 ~ Items[{Slot:13b}]
data remove block ~ 255 ~ Items[{Slot:14b}]
loot give @p mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
# GUI
replaceitem block ~ ~ ~ container.0 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12971024}
replaceitem block ~ ~ ~ container.1 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.2 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.3 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12971025}
replaceitem block ~ ~ ~ container.4 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.5 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.6 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12971026}
replaceitem block ~ ~ ~ container.7 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.8 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}

replaceitem block ~ ~ ~ container.9 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.10 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.11 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.15 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.16 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.17 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}

replaceitem block ~ ~ ~ container.18 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.19 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.20 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.21 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.22 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.23 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.24 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.25 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.26 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.bookshelf"}'},CustomModelData:12970000}