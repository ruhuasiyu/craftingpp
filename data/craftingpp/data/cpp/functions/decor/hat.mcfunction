setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:carved_pumpkin",Count:1b}]}
data modify block ~ 255 ~ Items[0].tag set from entity @s Inventory[{Slot:103b}].tag
execute store result score #temp cppValue run data get entity @s Inventory[{Slot:103b}].tag.CustomModelData
execute if score #temp cppValue matches 12970111..12970126 store result block ~ 255 ~ Items[0].tag.CustomModelData int 1 run scoreboard players remove #temp cppValue 100
execute store result block ~ 255 ~ Items[0].tag.hat_checked byte 1 run execute if entity @s
loot replace entity @s armor.head 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
