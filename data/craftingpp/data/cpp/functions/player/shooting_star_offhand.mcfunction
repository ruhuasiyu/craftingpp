execute store result score #t cppValue run data get entity @s Inventory[{Slot:-106b}].tag.cppType

data remove storage cpp:temp shooting_star
data modify storage cpp:temp shooting_star append from entity @s Inventory[{Slot:-106b}]
data modify storage cpp:temp shooting_star append from entity @s SelectedItem
data modify storage cpp:temp shooting_star[0].Slot set value 0b
data modify storage cpp:temp shooting_star[1].Slot set value 0b

execute if score #t cppValue matches 0 run data modify storage cpp:temp shooting_star[0].tag.cppType set value 1b
execute if score #t cppValue matches 1 run data modify storage cpp:temp shooting_star[0].tag.cppType set value 0b

setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items append from storage cpp:temp shooting_star[0]
loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
data remove block ~ 255 ~ Items
data modify block ~ 255 ~ Items append from storage cpp:temp shooting_star[1]
loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
