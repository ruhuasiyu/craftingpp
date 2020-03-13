setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:carved_pumpkin",Count:1b}]}
data modify block ~ 255 ~ Items[0] merge from entity @s SelectedItem
execute store result score #temp cppValue run data get block ~ 255 ~ Items[0].tag.CustomModelData
execute store result block ~ 255 ~ Items[0].tag.CustomModelData int 1 run scoreboard players add #temp cppValue 100
data modify block ~ 255 ~ Items[0].tag.cppHatSlot set value "hand"
loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
