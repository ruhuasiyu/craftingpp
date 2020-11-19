execute as @s[nbt={Facing:0b}] positioned ~ ~1 ~ if data block ~ ~ ~ Items run function cli:astick2h
execute as @s[nbt={Facing:1b}] positioned ~ ~-1 ~ if data block ~ ~ ~ Items run function cli:astick2h
execute as @s[nbt={Facing:2b}] positioned ~ ~ ~1 if data block ~ ~ ~ Items run function cli:astick2h
execute as @s[nbt={Facing:3b}] positioned ~ ~ ~-1 if data block ~ ~ ~ Items run function cli:astick2h
execute as @s[nbt={Facing:4b}] positioned ~1 ~ ~ if data block ~ ~ ~ Items run function cli:astick2h
execute as @s[nbt={Facing:5b}] positioned ~-1 ~ ~ if data block ~ ~ ~ Items run function cli:astick2h
