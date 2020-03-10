execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:infinite_bucket Item set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:infinite_bucket Item set from entity @s Inventory[{Slot:-106b}]

execute store result score #water cppValue run data get storage cpp:infinite_bucket Item.tag.liquid.water
execute store result score #lava cppValue run data get storage cpp:infinite_bucket Item.tag.liquid.lava
execute unless score #water cppValue matches 1.. if score #lava cppValue matches 1.. run function cpp:tool/infinite_bucket_lava
execute if score #water cppValue matches 1.. run function cpp:tool/infinite_bucket_water

data modify storage cpp:infinite_bucket Item.Slot set value 0b
setblock ~ 255 ~ shulker_box
setblock ~ 255 ~1 oak_sign
data modify block ~ 255 ~1 Text1 set value '[{"translate":"item.cpp.infinite_bucket.water"}," ",{"storage":"cpp:infinite_bucket","nbt":"Item.tag.liquid.water"}]'
data modify block ~ 255 ~1 Text2 set value '[{"translate":"item.cpp.infinite_bucket.lava"}," ",{"storage":"cpp:infinite_bucket","nbt":"Item.tag.liquid.lava"}]'
data modify storage cpp:infinite_bucket Item.tag.display.Lore[0] set from block ~ 255 ~1 Text1
data modify storage cpp:infinite_bucket Item.tag.display.Lore[1] set from block ~ 255 ~1 Text2
data modify block ~ 255 ~ Items append from storage cpp:infinite_bucket Item
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
execute as @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
fill ~ 255 ~ ~ 255 ~1 air
