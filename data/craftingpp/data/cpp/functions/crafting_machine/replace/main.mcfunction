setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:barrel",tag:{id:"cpp:crafting_machine",display:{Name:'{"translate":"block.minecraft.petrified_oak_slab"}'},CustomModelData:12970000},Count:1b}]}
data modify block ~ 255 ~ Items[0].Count set from entity @s SelectedItem.Count
loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
