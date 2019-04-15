execute store result score #temp cppValue run data get entity @s SelectedItem.tag.CustomModelData
execute if score #temp cppValue matches 12970011..12970027 store result entity @s SelectedItem.tag.CustomModelData int 1 run scoreboard players add #temp cppValue 100
