data modify storage cpp:playerbag Items set from entity @s Inventory
data modify storage cpp:playerbag Items[{id:'minecraft:netherite_sword',tag:{display:{Name:'{"text":"干将莫邪剑"}'}}}].tag.CustomModelData set value 12970002
data modify storage cpp:playerbag Items[{id:'minecraft:netherite_sword',tag:{display:{Name:'{"text":"干将莫邪剑"}'}}}].tag.display.Name set value '{"text":"干将莫邪剑","italic":"false"}'
setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from storage cpp:playerbag Items
loot replace entity @s hotbar.0 27 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}

data modify storage cpp:playerbag Items[{Slot:27b}].Slot set value 0b
data modify storage cpp:playerbag Items[{Slot:28b}].Slot set value 1b
data modify storage cpp:playerbag Items[{Slot:29b}].Slot set value 2b
data modify storage cpp:playerbag Items[{Slot:30b}].Slot set value 3b
data modify storage cpp:playerbag Items[{Slot:31b}].Slot set value 4b
data modify storage cpp:playerbag Items[{Slot:32b}].Slot set value 5b
data modify storage cpp:playerbag Items[{Slot:33b}].Slot set value 6b
data modify storage cpp:playerbag Items[{Slot:34b}].Slot set value 7b
data modify storage cpp:playerbag Items[{Slot:35b}].Slot set value 8b
data modify block ~ 255 ~ Items set from storage cpp:playerbag Items
loot replace entity @s inventory.18 9 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}

data remove storage cpp:playerbag Items[{Slot:0b}]
data modify storage cpp:playerbag Items[{Slot:-106b}].Slot set value 0b
data modify block ~ 255 ~ Items set from storage cpp:playerbag Items
loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
