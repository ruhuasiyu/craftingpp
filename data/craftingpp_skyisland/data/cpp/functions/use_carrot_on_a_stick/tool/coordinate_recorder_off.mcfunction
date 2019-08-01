setblock ~ 255 ~ shulker_box
loot insert ~ 255 ~ loot cpp:coordinate_recorder
execute store result block ~ 255 ~ Items[0].tag.StoredCoordinate.X int 1 run data get entity @s Pos[0]
execute store result block ~ 255 ~ Items[0].tag.StoredCoordinate.Y int 1 run data get entity @s Pos[1]
execute store result block ~ 255 ~ Items[0].tag.StoredCoordinate.Z int 1 run data get entity @s Pos[2]
execute store result block ~ 255 ~ Items[0].tag.hasRecord byte 1 run scoreboard players set #temp cppValue 1
tellraw @s [{"translate":"item.cpp.coordinate_recorder.info"},{"text":", X: "},{"block":"~ 255 ~","nbt":"Items[0].tag.StoredCoordinate.X"},{"text":", Y: "},{"block":"~ 255 ~","nbt":"Items[0].tag.StoredCoordinate.Y"},{"text":", Z: "},{"block":"~ 255 ~","nbt":"Items[0].tag.StoredCoordinate.Z"}]
loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
