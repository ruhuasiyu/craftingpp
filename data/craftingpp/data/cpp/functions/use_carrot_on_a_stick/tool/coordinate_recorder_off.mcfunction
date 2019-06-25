execute store result entity @s Inventory[{Slot:-106b}].tag.StoredCoordinate.X int 1 run data get entity @s Pos[0]
execute store result entity @s Inventory[{Slot:-106b}].tag.StoredCoordinate.Y int 1 run data get entity @s Pos[1]
execute store result entity @s Inventory[{Slot:-106b}].tag.StoredCoordinate.Z int 1 run data get entity @s Pos[2]
execute store result entity @s Inventory[{Slot:-106b}].tag.hasRecord byte 1 run scoreboard players set #temp cppValue 1
tellraw @s [{"translate":"item.cpp.coordinate_recorder.info"},{"text":", X: "},{"entity":"@s","nbt":"Inventory[{Slot:-106b}].tag.StoredCoordinate.X"},{"text":", Y: "},{"entity":"@s","nbt":"Inventory[{Slot:-106b}].tag.StoredCoordinate.Y"},{"text":", Z: "},{"entity":"@s","nbt":"Inventory[{Slot:-106b}].tag.StoredCoordinate.Z"}]

