execute store result entity @s SelectedItem.tag.StoredCoordinate.X int 1 run data get entity @s Pos[0]
execute store result entity @s SelectedItem.tag.StoredCoordinate.Y int 1 run data get entity @s Pos[1]
execute store result entity @s SelectedItem.tag.StoredCoordinate.Z int 1 run data get entity @s Pos[2]
execute store result entity @s SelectedItem.tag.hasRecord byte 1 run scoreboard players set #temp cppValue 1
tellraw @s [{"translate":"item.cpp.coordinate_recorder.info"},{"text":", X: "},{"entity":"@s","nbt":"SelectedItem.tag.StoredCoordinate.X"},{"text":", Y: "},{"entity":"@s","nbt":"SelectedItem.tag.StoredCoordinate.Y"},{"text":", Z: "},{"entity":"@s","nbt":"SelectedItem.tag.StoredCoordinate.Z"}]
