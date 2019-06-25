scoreboard players set @s cppTrim 0
setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from entity @s Inventory
data modify block ~ 255 ~ Items append value {Slot:0b,id:"minecraft:stone",Count:1b}
data modify block ~ 255 ~ Items append value {Slot:1b,id:"minecraft:stone",Count:1b}
data modify block ~ 255 ~ Items append value {Slot:2b,id:"minecraft:stone",Count:1b}
data modify block ~ 255 ~ Items append value {Slot:3b,id:"minecraft:stone",Count:1b}
data modify block ~ 255 ~ Items append value {Slot:4b,id:"minecraft:stone",Count:1b}
data modify block ~ 255 ~ Items append value {Slot:5b,id:"minecraft:stone",Count:1b}
data modify block ~ 255 ~ Items append value {Slot:6b,id:"minecraft:stone",Count:1b}
data modify block ~ 255 ~ Items append value {Slot:7b,id:"minecraft:stone",Count:1b}
data modify block ~ 255 ~ Items append value {Slot:8b,id:"minecraft:stone",Count:1b}
data modify block ~ 255 ~ Items[{Slot:0b}].id set from entity @s Inventory[{Slot:27b}].id
data modify block ~ 255 ~ Items[{Slot:1b}].id set from entity @s Inventory[{Slot:28b}].id
data modify block ~ 255 ~ Items[{Slot:2b}].id set from entity @s Inventory[{Slot:29b}].id
data modify block ~ 255 ~ Items[{Slot:3b}].id set from entity @s Inventory[{Slot:30b}].id
data modify block ~ 255 ~ Items[{Slot:4b}].id set from entity @s Inventory[{Slot:31b}].id
data modify block ~ 255 ~ Items[{Slot:5b}].id set from entity @s Inventory[{Slot:32b}].id
data modify block ~ 255 ~ Items[{Slot:6b}].id set from entity @s Inventory[{Slot:33b}].id
data modify block ~ 255 ~ Items[{Slot:7b}].id set from entity @s Inventory[{Slot:34b}].id
data modify block ~ 255 ~ Items[{Slot:8b}].id set from entity @s Inventory[{Slot:35b}].id
data modify block ~ 255 ~ Items[{Slot:0b}].Count set from entity @s Inventory[{Slot:27b}].Count
data modify block ~ 255 ~ Items[{Slot:1b}].Count set from entity @s Inventory[{Slot:28b}].Count
data modify block ~ 255 ~ Items[{Slot:2b}].Count set from entity @s Inventory[{Slot:29b}].Count
data modify block ~ 255 ~ Items[{Slot:3b}].Count set from entity @s Inventory[{Slot:30b}].Count
data modify block ~ 255 ~ Items[{Slot:4b}].Count set from entity @s Inventory[{Slot:31b}].Count
data modify block ~ 255 ~ Items[{Slot:5b}].Count set from entity @s Inventory[{Slot:32b}].Count
data modify block ~ 255 ~ Items[{Slot:6b}].Count set from entity @s Inventory[{Slot:33b}].Count
data modify block ~ 255 ~ Items[{Slot:7b}].Count set from entity @s Inventory[{Slot:34b}].Count
data modify block ~ 255 ~ Items[{Slot:8b}].Count set from entity @s Inventory[{Slot:35b}].Count
data modify block ~ 255 ~ Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:27b}].tag
data modify block ~ 255 ~ Items[{Slot:1b}].tag set from entity @s Inventory[{Slot:28b}].tag
data modify block ~ 255 ~ Items[{Slot:2b}].tag set from entity @s Inventory[{Slot:29b}].tag
data modify block ~ 255 ~ Items[{Slot:3b}].tag set from entity @s Inventory[{Slot:30b}].tag
data modify block ~ 255 ~ Items[{Slot:4b}].tag set from entity @s Inventory[{Slot:31b}].tag
data modify block ~ 255 ~ Items[{Slot:5b}].tag set from entity @s Inventory[{Slot:32b}].tag
data modify block ~ 255 ~ Items[{Slot:6b}].tag set from entity @s Inventory[{Slot:33b}].tag
data modify block ~ 255 ~ Items[{Slot:7b}].tag set from entity @s Inventory[{Slot:34b}].tag
data modify block ~ 255 ~ Items[{Slot:8b}].tag set from entity @s Inventory[{Slot:35b}].tag

execute unless entity @s[nbt={Inventory:[{Slot:27b}]}] run data remove block ~ 255 ~ Items[{Slot:0b}]
execute unless entity @s[nbt={Inventory:[{Slot:28b}]}] run data remove block ~ 255 ~ Items[{Slot:1b}]
execute unless entity @s[nbt={Inventory:[{Slot:29b}]}] run data remove block ~ 255 ~ Items[{Slot:2b}]
execute unless entity @s[nbt={Inventory:[{Slot:30b}]}] run data remove block ~ 255 ~ Items[{Slot:3b}]
execute unless entity @s[nbt={Inventory:[{Slot:31b}]}] run data remove block ~ 255 ~ Items[{Slot:4b}]
execute unless entity @s[nbt={Inventory:[{Slot:32b}]}] run data remove block ~ 255 ~ Items[{Slot:5b}]
execute unless entity @s[nbt={Inventory:[{Slot:33b}]}] run data remove block ~ 255 ~ Items[{Slot:6b}]
execute unless entity @s[nbt={Inventory:[{Slot:34b}]}] run data remove block ~ 255 ~ Items[{Slot:7b}]
execute unless entity @s[nbt={Inventory:[{Slot:35b}]}] run data remove block ~ 255 ~ Items[{Slot:8b}]

setblock ~ 255 ~1 shulker_box
loot insert ~ 255 ~1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s inventory.0 27 mine ~ 255 ~1 diamond_pickaxe{isShulkerMarker:1b}
fill ~ 255 ~ ~ 255 ~1 air
