setblock ~ 255 ~ shulker_box
loot replace block ~ 255 ~ container.0 loot cpp:crafting_machine
data modify block ~ 255 ~ Items[0].Count set from entity @s SelectedItem.Count
loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
