xp add @s[gamemode=!creative] -40
tellraw @s ["<",{"selector":"@s"},"> Slonhon Ral!"]
execute unless data entity @s SpawnDimension in overworld run function cpp:tool/origin_of_the_world1
execute as @s[nbt={SpawnDimension:"minecraft:overworld"}] in overworld run function cpp:tool/origin_of_the_world2
execute as @s[nbt={SpawnDimension:"minecraft:the_nether"}] in the_nether run function cpp:tool/origin_of_the_world2
execute as @s[nbt={SpawnDimension:"cpp:flower"}] in cpp:flower run function cpp:tool/origin_of_the_world2
