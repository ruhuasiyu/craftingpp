xp add @s -40
tag @s remove cpp_has_enough_xp
tellraw @s ["<",{"selector":"@s"},"> Slonhon Ral!"]
execute in overworld run tp @s ~ 255 ~
execute unless data entity @s SpawnX in overworld run function cpp:tool/origin_of_the_world1
execute if data entity @s SpawnX in overworld run function cpp:tool/origin_of_the_world2
