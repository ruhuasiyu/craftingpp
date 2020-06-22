execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:green_force Item set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:green_force Item set from entity @s Inventory[{Slot:-106b}]

execute store result score #t cppValue run data get storage cpp:green_force Item.tag.cppLiquid.lava
execute store result storage cpp:green_force Item.tag.cppLiquid.lava int 1 run scoreboard players add #t cppValue 1

setblock ~ 255 ~1 oak_sign
data modify block ~ 255 ~1 Text1 set value '[{"color":"red","italic":false,"translate":"block.minecraft.lava"}," ",{"italic":false,"score":{"name":"#t","objective":"cppValue"}}]'
execute if score #t cppValue matches 1.. run data modify storage cpp:green_force Item.tag.display.Lore[1] set from block ~ 255 ~1 Text1

setblock ~ 255 ~ shulker_box
data modify storage cpp:green_force Item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage cpp:green_force Item
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
fill ~ 255 ~ ~ 255 ~1 air
