summon armor_stand ~ 65 ~1 {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_temp"]}
spreadplayers ~ ~ 1 10 false @e[tag=cpp_temp]
execute at @e[tag=cpp_temp,limit=1] run setblock ~ ~ ~ bedrock
execute at @e[tag=cpp_temp,limit=1] run setblock ~ ~1 ~ chest{Items:[{Slot:0b,Count:1b,id:"minecraft:oak_sapling"},{Slot:1b,Count:1b,id:"minecraft:dirt"},{Slot:2b,Count:16b,id:"minecraft:bone_meal"}]}
execute at @e[tag=cpp_temp,limit=1] run tp @a ~ ~2 ~
execute at @e[tag=cpp_temp,limit=1] run setworldspawn ~ ~3 ~
kill @e[tag=cpp_temp]
scoreboard players set #load_bsd cppValue 1
