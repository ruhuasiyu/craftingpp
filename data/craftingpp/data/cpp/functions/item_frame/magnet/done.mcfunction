data modify storage cpp:dist Item set from entity @e[type=item,distance=..0.5,limit=1,sort=nearest] Item
tag @s remove cpp_dist_success
execute as @s[nbt={Facing:0b}] positioned ~ ~1 ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[nbt={Facing:1b}] positioned ~ ~-1 ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[nbt={Facing:2b}] positioned ~ ~ ~1 if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[nbt={Facing:3b}] positioned ~ ~ ~-1 if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[nbt={Facing:4b}] positioned ~1 ~ ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[nbt={Facing:5b}] positioned ~-1 ~ ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[tag=cpp_dist_success] run kill @e[type=item,distance=..0.5,limit=1,sort=nearest]
