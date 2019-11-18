setblock ~ ~3 ~ minecraft:oak_trapdoor[facing=south,half=bottom]
setblock ~1 ~1 ~ minecraft:oak_trapdoor[facing=east,half=top]
setblock ~-1 ~1 ~ minecraft:oak_trapdoor[facing=west,half=top]
setblock ~ ~2 ~ minecraft:carved_pumpkin[facing=south]
setblock ~ ~1 ~ minecraft:hay_block
setblock ~ ~ ~ minecraft:oak_fence
setblock ~ ~-1 ~ minecraft:water

summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}

spreadplayers ~ ~ 0 2 false @e[type=armor_stand,distance=..5,tag=cpp_temp]
execute at @e[type=armor_stand,distance=..5,tag=cpp_temp] if block ~ ~-1 ~ minecraft:grass_block run setblock ~ ~-1 ~ minecraft:farmland[moisture=7]
execute at @e[type=armor_stand,distance=..5,tag=cpp_temp] if entity @s[nbt={Item:{Count:1b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ minecraft:wheat
execute at @e[type=armor_stand,distance=..5,tag=cpp_temp] if entity @s[nbt={Item:{Count:2b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ minecraft:carrots
execute at @e[type=armor_stand,distance=..5,tag=cpp_temp] if entity @s[nbt={Item:{Count:3b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ minecraft:potatoes
execute at @e[type=armor_stand,distance=..5,tag=cpp_temp] if entity @s[nbt={Item:{Count:4b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ minecraft:beetroots
kill @e[type=armor_stand,distance=..5,tag=cpp_temp]
