execute store result score #temp cppValue run data get entity @s Inventory[{Slot:103b}].tag.CustomModelData
execute if score #temp cppValue matches 12970111..12970127 store result entity @s Inventory[{Slot:103b}].tag.CustomModelData int 1 run scoreboard players remove #temp cppValue 100
