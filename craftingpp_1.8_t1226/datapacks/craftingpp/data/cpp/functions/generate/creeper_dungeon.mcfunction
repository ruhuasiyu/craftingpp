advancement revoke @a only cpp:others/creeper_dungeon
execute as @e[tag=cpp_chunk] run data merge entity @s {Age:0}
execute at @a offset ~-32 0 ~-32 unless entity @e[tag=cpp_chunk,dx=65,dy=256,dz=65] run function cpp:generate/mark_dungeon
execute as @e[type=item,nbt={Item:{tag:{Tags:["cpp_creeper_dungeon"]}}},limit=1] at @s run function cpp:generate/build_dungeon
kill @e[type=item,nbt={Item:{tag:{Tags:["cpp_dead"]}}}]
