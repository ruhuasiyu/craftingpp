kill @s
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:acacia_sapling",Count:2b}}] {Item:{id:"minecraft:dark_oak_sapling",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:jungle_sapling",Count:2b}}] {Item:{id:"minecraft:acacia_sapling",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:birch_sapling",Count:2b}}] {Item:{id:"minecraft:jungle_sapling",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:spruce_sapling",Count:2b}}] {Item:{id:"minecraft:birch_sapling",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:oak_sapling",Count:2b}}] {Item:{id:"minecraft:spruce_sapling",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:2b}}] {Item:{id:"minecraft:oak_sapling",Count:1b}}

data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:cocoa_beans",Count:2b}}] {Item:{id:"minecraft:wheat_seeds",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:cactus",Count:2b}}] {Item:{id:"minecraft:cocoa_beans",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:sugar_cane",Count:2b}}] {Item:{id:"minecraft:cactus",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:melon_seeds",Count:2b}}] {Item:{id:"minecraft:sugar_cane",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:pumpkin_seeds",Count:2b}}] {Item:{id:"minecraft:melon_seeds",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:potato",Count:2b}}] {Item:{id:"minecraft:pumpkin_seeds",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:carrot",Count:2b}}] {Item:{id:"minecraft:potato",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:beetroot_seeds",Count:2b}}] {Item:{id:"minecraft:carrot",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:wheat_seeds",Count:2b}}] {Item:{id:"minecraft:beetroot_seeds",Count:1b}}

data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:pink_tulip",Count:2b}}] {Item:{id:"minecraft:dandelion",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:dandelion",Count:2b}}] {Item:{id:"minecraft:poppy",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:poppy",Count:2b}}] {Item:{id:"minecraft:azure_bluet",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:azure_bluet",Count:2b}}] {Item:{id:"minecraft:blue_orchid",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:blue_orchid",Count:2b}}] {Item:{id:"minecraft:allium",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:allium",Count:2b}}] {Item:{id:"minecraft:oxeye_daisy",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:oxeye_daisy",Count:2b}}] {Item:{id:"minecraft:red_tulip",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:red_tulip",Count:2b}}] {Item:{id:"minecraft:orange_tulip",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:orange_tulip",Count:2b}}] {Item:{id:"minecraft:white_tulip",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:white_tulip",Count:2b}}] {Item:{id:"minecraft:pink_tulip",Count:1b}}

data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:peony",Count:2b}}] {Item:{id:"minecraft:rose_bush",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:rose_bush",Count:2b}}] {Item:{id:"minecraft:sunflower",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:sunflower",Count:2b}}] {Item:{id:"minecraft:lilac",Count:1b}}
data merge entity @e[type=item,limit=1,distance=..4,nbt={Item:{id:"minecraft:lilac",Count:2b}}] {Item:{id:"minecraft:peony",Count:1b}}

replaceitem entity @p[nbt={SelectedItemSlot:0}] hotbar.0 minecraft:lingering_potion{CustomPotionColor:8073150,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.purple_force_of_wood"}}
replaceitem entity @p[nbt={SelectedItemSlot:1}] hotbar.1 minecraft:lingering_potion{CustomPotionColor:8073150,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.purple_force_of_wood"}}
replaceitem entity @p[nbt={SelectedItemSlot:2}] hotbar.2 minecraft:lingering_potion{CustomPotionColor:8073150,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.purple_force_of_wood"}}
replaceitem entity @p[nbt={SelectedItemSlot:3}] hotbar.3 minecraft:lingering_potion{CustomPotionColor:8073150,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.purple_force_of_wood"}}
replaceitem entity @p[nbt={SelectedItemSlot:4}] hotbar.4 minecraft:lingering_potion{CustomPotionColor:8073150,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.purple_force_of_wood"}}
replaceitem entity @p[nbt={SelectedItemSlot:5}] hotbar.5 minecraft:lingering_potion{CustomPotionColor:8073150,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.purple_force_of_wood"}}
replaceitem entity @p[nbt={SelectedItemSlot:6}] hotbar.6 minecraft:lingering_potion{CustomPotionColor:8073150,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.purple_force_of_wood"}}
replaceitem entity @p[nbt={SelectedItemSlot:7}] hotbar.7 minecraft:lingering_potion{CustomPotionColor:8073150,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.purple_force_of_wood"}}
replaceitem entity @p[nbt={SelectedItemSlot:8}] hotbar.8 minecraft:lingering_potion{CustomPotionColor:8073150,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.purple_force_of_wood"}}
