execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:green_force Item set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:green_force Item set from entity @s Inventory[{Slot:-106b}]

execute store result score #t cppValue run data get storage cpp:green_force Item.tag.cppLiquid.type
execute if score #t cppValue matches 0 run data modify storage cpp:green_force Item.tag.cppLiquid.type set value 1
execute if score #t cppValue matches 0 run title @s actionbar [{"translate":"info.cpp.green_force_of_water"},{"color":"red","italic":false,"translate":"block.minecraft.lava"}]
execute if score #t cppValue matches 1 run data modify storage cpp:green_force Item.tag.cppLiquid.type set value 0
execute if score #t cppValue matches 1 run title @s actionbar [{"translate":"info.cpp.green_force_of_water"},{"color":"green","italic":false,"translate":"block.minecraft.water"}]
setblock ~ 255 ~ shulker_box
data modify storage cpp:green_force Item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage cpp:green_force Item
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
