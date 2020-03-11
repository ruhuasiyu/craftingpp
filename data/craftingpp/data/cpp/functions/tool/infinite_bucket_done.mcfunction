execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:infinite_bucket Item set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:infinite_bucket Item set from entity @s Inventory[{Slot:-106b}]

setblock ~ 255 ~1 oak_sign
setblock ~ 255 ~ shulker_box
data modify storage cpp:infinite_bucket Item.Slot set value 0b
data remove storage cpp:infinite_bucket Item.tag.display.Lore

execute store result score #t cppValue run data get storage cpp:infinite_bucket Item.tag.cppLiquid.water
execute if block ~ ~ ~ water[level=0] store result storage cpp:infinite_bucket Item.tag.cppLiquid.water int 1 run scoreboard players add #t cppValue 1
data modify block ~ 255 ~1 Text1 set value '[{"translate":"item.cpp.infinite_bucket.water"}," ",{"score":{"name":"#t","objective":"cppValue"}}]'
execute if score #t cppValue matches 1.. run data modify storage cpp:infinite_bucket Item.tag.display.Lore append from block ~ 255 ~1 Text1

execute store result score #t cppValue run data get storage cpp:infinite_bucket Item.tag.cppLiquid.lava
execute if block ~ ~ ~ lava[level=0] store result storage cpp:infinite_bucket Item.tag.cppLiquid.lava int 1 run scoreboard players add #t cppValue 1
data modify block ~ 255 ~1 Text1 set value '[{"translate":"item.cpp.infinite_bucket.lava"}," ",{"score":{"name":"#t","objective":"cppValue"}}]'
execute if score #t cppValue matches 1.. run data modify storage cpp:infinite_bucket Item.tag.display.Lore append from block ~ 255 ~1 Text1

data modify block ~ 255 ~ Items append from storage cpp:infinite_bucket Item
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
fill ~ 255 ~ ~ 255 ~1 air
setblock ~ ~ ~ air