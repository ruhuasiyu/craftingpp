setblock ~ 255 ~ shulker_box
data remove storage cpp:tool Item.Slot
data modify block ~ 255 ~ Items[{Slot:0b}] merge from storage cpp:tool Item
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
execute if score #damage cppValue matches 26.. run replaceitem entity @s[predicate=!cpp:mainhand/carrot_on_a_stick] weapon.offhand air
execute if score #damage cppValue matches 26.. run replaceitem entity @s[predicate=cpp:mainhand/carrot_on_a_stick] weapon.mainhand air
