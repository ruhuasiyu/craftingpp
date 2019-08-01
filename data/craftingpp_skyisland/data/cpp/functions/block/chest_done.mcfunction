
execute as @s[nbt=!{SelectedItem:{id:"minecraft:chest"}}] run data modify block ~ ~ ~ Items set from entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items
execute as @s[nbt={SelectedItem:{id:"minecraft:chest"}}] run data modify block ~ ~ ~ Items set from entity @s SelectedItem.tag.BlockEntityTag.Items
