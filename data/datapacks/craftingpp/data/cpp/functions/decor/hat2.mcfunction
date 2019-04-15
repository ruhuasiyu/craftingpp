execute store result score #temp cppValue run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute if score #temp cppValue matches 12970011..12970027 store result entity @s Inventory[{Slot:-106b}].tag.CustomModelData int 1 run scoreboard players add #temp cppValue 100
