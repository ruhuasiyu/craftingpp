advancement revoke @s only cpp:block/carved_pumpkin
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carved_pumpkin"}}] if data entity @s Inventory[{Slot:-106b}].tag.CustomModelData at @s anchored eyes run function cpp:block/carved_pumpkin_ray
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carved_pumpkin"}}] if data entity @s SelectedItem.tag.CustomModelData at @s anchored eyes run function cpp:block/carved_pumpkin_ray

execute at @e[tag=cpp_carved_pumpkin_pos] run function cpp:block/carved_pumpkin_done