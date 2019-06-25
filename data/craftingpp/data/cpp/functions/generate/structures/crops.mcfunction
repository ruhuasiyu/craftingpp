execute if block ~ ~-1 ~ grass_block run setblock ~ ~3 ~ oak_trapdoor[facing=south,half=bottom]
execute if block ~ ~-1 ~ grass_block run setblock ~1 ~1 ~ oak_trapdoor[facing=east,half=top]
execute if block ~ ~-1 ~ grass_block run setblock ~-1 ~1 ~ oak_trapdoor[facing=west,half=top]
execute if block ~ ~-1 ~ grass_block run setblock ~ ~2 ~ jack_o_lantern[facing=south]
execute if block ~ ~-1 ~ grass_block run setblock ~ ~1 ~ hay_block
execute if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ oak_fence
execute if block ~ ~-1 ~ grass_block run setblock ~ ~-1 ~ water

summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["cpp_temp"]}

spreadplayers ~ ~ 0 2 false @e[type=armor_stand,tag=cpp_temp]
execute as @e[type=armor_stand,tag=cpp_temp] at @s if block ~ ~-1 ~ grass_block run setblock ~ ~-1 ~ farmland[moisture=7]
execute at @e[type=armor_stand,tag=cpp_temp] as @s[nbt={Item:{Count:1b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ wheat
execute at @e[type=armor_stand,tag=cpp_temp] as @s[nbt={Item:{Count:2b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ carrots
execute at @e[type=armor_stand,tag=cpp_temp] as @s[nbt={Item:{Count:3b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ potatoes
execute at @e[type=armor_stand,tag=cpp_temp] as @s[nbt={Item:{Count:4b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ beetroots
kill @e[tag=cpp_temp]
