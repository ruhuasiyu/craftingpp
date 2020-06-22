execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:green_force Item set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:green_force Item set from entity @s Inventory[{Slot:-106b}]
execute store result score #t cppValue run data get storage cpp:green_force Item.tag.cppLiquid.type
execute store result score #lava cppValue run data get storage cpp:green_force Item.tag.cppLiquid.lava
execute if score #t cppValue matches 0 run setblock ~ ~ ~ water
execute if score #t cppValue matches 1 if score #lava cppValue matches 1.. run function cpp:cst/element/green_lava
