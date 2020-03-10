setblock ~ 255 ~ shulker_box
loot insert ~ 255 ~ loot cpp:coordinate_recorder
execute store result block ~ 255 ~ Items[0].tag.StoredCoordinate.X int 1 run data get entity @s Pos[0]
execute store result block ~ 255 ~ Items[0].tag.StoredCoordinate.Y int 1 run data get entity @s Pos[1]
execute store result block ~ 255 ~ Items[0].tag.StoredCoordinate.Z int 1 run data get entity @s Pos[2]

setblock ~1 255 ~ oak_sign
execute store result score #t0 cppValue run data get entity @s Pos[0]
execute store result score #t1 cppValue run data get entity @s Pos[1]
execute store result score #t2 cppValue run data get entity @s Pos[2]
data modify block ~1 255 ~ Text1 set value '{"text":"X: ","color":"green","italic":"false","extra":[{"score":{"name":"#t0","objective":"cppValue"}},{"text":", Y: "},{"score":{"name":"#t1","objective":"cppValue"}},{"text":", Z: "},{"score":{"name":"#t2","objective":"cppValue"}}]}'
execute unless data block ~ 255 ~ Items[0].tag.display.Lore run data modify block ~ 255 ~ Items[0].tag.display.Lore append from block ~1 255 ~ Text1
data modify block ~ 255 ~ Items[0].tag.display.Lore[0] set from block ~1 255 ~ Text1

execute store result block ~ 255 ~ Items[0].tag.hasRecord byte 1 run scoreboard players set #temp cppValue 1
tellraw @s [{"translate":"item.cpp.coordinate_recorder.info"},{"text":", X: "},{"block":"~ 255 ~","nbt":"Items[0].tag.StoredCoordinate.X"},{"text":", Y: "},{"block":"~ 255 ~","nbt":"Items[0].tag.StoredCoordinate.Y"},{"text":", Z: "},{"block":"~ 255 ~","nbt":"Items[0].tag.StoredCoordinate.Z"}]
loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
fill ~ 255 ~ ~1 255 ~ air
