setblock ~ ~ ~ end_gateway{ExactTeleport:1b} destroy
execute as @s[nbt=!{SelectedItem:{tag:{id:"cpp:coordinate_recorder"}}}] store result block ~ ~ ~ ExitPortal.X int 1 run data get entity @s Inventory[{Slot:-106b}].tag.StoredCoordinate.X
execute as @s[nbt=!{SelectedItem:{tag:{id:"cpp:coordinate_recorder"}}}] store result block ~ ~ ~ ExitPortal.Y int 1 run data get entity @s Inventory[{Slot:-106b}].tag.StoredCoordinate.Y
execute as @s[nbt=!{SelectedItem:{tag:{id:"cpp:coordinate_recorder"}}}] store result block ~ ~ ~ ExitPortal.Z int 1 run data get entity @s Inventory[{Slot:-106b}].tag.StoredCoordinate.Z
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:coordinate_recorder"}}}] store result block ~ ~ ~ ExitPortal.X int 1 run data get entity @s SelectedItem.tag.StoredCoordinate.X
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:coordinate_recorder"}}}] store result block ~ ~ ~ ExitPortal.Y int 1 run data get entity @s SelectedItem.tag.StoredCoordinate.Y
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:coordinate_recorder"}}}] store result block ~ ~ ~ ExitPortal.Z int 1 run data get entity @s SelectedItem.tag.StoredCoordinate.Z

replaceitem entity @s[nbt=!{SelectedItem:{tag:{id:"cpp:coordinate_recorder"}}},gamemode=!creative] weapon.offhand air
replaceitem entity @s[nbt={SelectedItem:{tag:{id:"cpp:coordinate_recorder"}}},gamemode=!creative] weapon.mainhand air
