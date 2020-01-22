tag @s remove cpp_dist_success
execute as @s[nbt={Facing:0b}] positioned ~ ~1 ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[nbt={Facing:1b}] positioned ~ ~-1 ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[nbt={Facing:2b}] positioned ~ ~ ~1 if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[nbt={Facing:3b}] positioned ~ ~ ~-1 if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[nbt={Facing:4b}] positioned ~1 ~ ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[nbt={Facing:5b}] positioned ~-1 ~ ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
