execute store result entity @s SelectedItem.tag.StoredCoordinate.X int 1 run data get entity @s Pos[0]
execute store result entity @s SelectedItem.tag.StoredCoordinate.Y int 1 run data get entity @s Pos[1]
execute store result entity @s SelectedItem.tag.StoredCoordinate.Z int 1 run data get entity @s Pos[2]
execute store result entity @s SelectedItem.tag.hasRecord byte 1 run scoreboard players set #temp cppValue 1
execute store result score #temp0 cppValue run data get entity @s Pos[0]
execute store result score #temp1 cppValue run data get entity @s Pos[1]
execute store result score #temp2 cppValue run data get entity @s Pos[2]
tellraw @s [{"translate":"item.cpp.coordinate_recorder.info"},{"text":", X: "},{"score":{"objective":"cppValue","name":"#temp0"}},{"text":", Y: "},{"score":{"objective":"cppValue","name":"#temp1"}},{"text":", Z: "},{"score":{"objective":"cppValue","name":"#temp2"}}]
