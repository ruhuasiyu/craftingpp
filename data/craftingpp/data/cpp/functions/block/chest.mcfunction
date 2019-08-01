advancement revoke @s only cpp:block/chest
execute as @s[nbt=!{SelectedItem:{id:"minecraft:chest"}}] at @s if data entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[] anchored eyes run function cpp:block/chest_ray
execute as @s[nbt={SelectedItem:{id:"minecraft:chest"}}] at @s if data entity @s SelectedItem.tag.BlockEntityTag.Items[] anchored eyes run function cpp:block/chest_ray
