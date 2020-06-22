setblock ~ ~3 ~ oak_trapdoor[facing=south,half=bottom]
setblock ~1 ~1 ~ oak_trapdoor[facing=east,half=top]
setblock ~-1 ~1 ~ oak_trapdoor[facing=west,half=top]
setblock ~ ~2 ~ carved_pumpkin[facing=south]
setblock ~ ~1 ~ hay_block
setblock ~ ~ ~ oak_fence
setblock ~ ~-1 ~ water

summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}

spreadplayers ~ ~ 0 2 false @e[type=armor_stand,distance=..5,tag=cpp_temp]
execute at @e[type=armor_stand,distance=..5,tag=cpp_temp] if block ~ ~-1 ~ grass_block run setblock ~ ~-1 ~ farmland[moisture=7]
execute at @e[type=armor_stand,distance=..5,tag=cpp_temp] if entity @s[nbt={Item:{Count:1b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ wheat
execute at @e[type=armor_stand,distance=..5,tag=cpp_temp] if entity @s[nbt={Item:{Count:2b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ carrots
execute at @e[type=armor_stand,distance=..5,tag=cpp_temp] if entity @s[nbt={Item:{Count:3b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ potatoes
execute at @e[type=armor_stand,distance=..5,tag=cpp_temp] if entity @s[nbt={Item:{Count:4b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ beetroots
kill @e[type=armor_stand,distance=..5,tag=cpp_temp]
