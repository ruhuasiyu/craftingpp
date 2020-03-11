execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:infinite_bucket Item set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:infinite_bucket Item set from entity @s Inventory[{Slot:-106b}]
setblock ~ 255 ~1 oak_sign
setblock ~ 255 ~ shulker_box
data modify storage cpp:infinite_bucket Item.Slot set value 0b
data remove storage cpp:infinite_bucket Item.tag.display.Lore

execute store result score #t cppValue run data get storage cpp:infinite_bucket Item.tag.cppLiquid.type
execute store result score #water cppValue run data get storage cpp:infinite_bucket Item.tag.cppLiquid.water
execute store result score #lava cppValue run data get storage cpp:infinite_bucket Item.tag.cppLiquid.lava
execute if score #t cppValue matches 0 if score #water cppValue matches 1.. run function cpp:tool/infinite_bucket_water
execute if score #t cppValue matches 1 if score #lava cppValue matches 1.. run function cpp:tool/infinite_bucket_lava

data modify block ~ 255 ~1 Text1 set value '[{"translate":"item.cpp.infinite_bucket.water"}," ",{"score":{"name":"#water","objective":"cppValue"}}]'
execute if score #water cppValue matches 1.. run data modify storage cpp:infinite_bucket Item.tag.display.Lore append from block ~ 255 ~1 Text1
data modify block ~ 255 ~1 Text1 set value '[{"translate":"item.cpp.infinite_bucket.lava"}," ",{"score":{"name":"#lava","objective":"cppValue"}}]'
execute if score #lava cppValue matches 1.. run data modify storage cpp:infinite_bucket Item.tag.display.Lore append from block ~ 255 ~1 Text1

data modify block ~ 255 ~ Items append from storage cpp:infinite_bucket Item
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
fill ~ 255 ~ ~ 255 ~1 air
