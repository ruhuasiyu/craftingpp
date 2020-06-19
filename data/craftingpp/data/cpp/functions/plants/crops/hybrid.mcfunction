setblock ~ 255 ~ chest
loot insert ~ 255 ~ loot cpp:misc/random20
execute store result score #rand cppValue run data get block ~ 255 ~ Items[0].Count
setblock ~ 255 ~ air
execute store result score #temp cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score #rand cppValue matches 7..20 at @s run function cpp:plants/crops/hybrid1
