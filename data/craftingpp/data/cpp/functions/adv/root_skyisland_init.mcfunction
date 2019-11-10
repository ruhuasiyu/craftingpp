forceload add ~ ~
setblock ~ 62 ~ bedrock
setblock ~ 63 ~ chest{Items:[{Slot:0b,Count:4b,id:"minecraft:oak_sapling"},{Slot:1b,Count:1b,id:"minecraft:dirt"},{Slot:2b,Count:16b,id:"minecraft:bone_meal"}]}
execute as @p[tag=cpp_new_player] run tp ~ 64 ~
spawnpoint @p[tag=cpp_new_player] ~ 65 ~
forceload remove ~ ~
kill @s
