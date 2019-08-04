tellraw @s ["<",{"selector":"@s"},"> Slonhon Ral!"]
execute in overworld run tp @s 0 255 0
tellraw @p [{"nbt":"Pos","entity":"@p"}]
execute store result score #temp cppValue run spreadplayers 0 0 1 10 false @s
execute if score #temp cppValue matches 0 run fill -1 62 -1 1 62 1 dirt
spreadplayers 0 0 1 10 false @s
execute in overworld if data entity @s SpawnX run function cpp:use_carrot_on_a_stick/tool/origin_of_the_world2
execute unless data entity @s SpawnX run tellraw @s {"translate":"item.cpp.origin_of_the_world.no_spawn"}
