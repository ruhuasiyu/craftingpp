advancement revoke @a only cpp:others/trees
execute as @e[tag=cpp_chunk] run data merge entity @s {Age:0}
execute at @a offset ~-32 0 ~-32 unless entity @e[tag=cpp_chunk,dx=65,dy=256,dz=65] run function cpp:generate/mark_trees
execute as @e[type=item,nbt={Item:{tag:{Tags:["cpp_peach_tree"]}}},limit=1] at @s if block ~ ~-1 ~ grass_block run function cpp:generate/peach_tree
execute as @e[type=item,nbt={Item:{tag:{Tags:["cpp_apple_tree"]}}},limit=1] at @s if block ~ ~-1 ~ grass_block run function cpp:generate/apple_tree
execute as @e[type=item,nbt={Item:{tag:{Tags:["cpp_orange_tree"]}}},limit=1] at @s if block ~ ~-1 ~ grass_block run function cpp:generate/orange_tree
execute as @e[type=item,nbt={Item:{tag:{Tags:["cpp_sakura_tree"]}}},limit=1] at @s if block ~ ~-1 ~ grass_block run function cpp:generate/sakura_tree
execute as @e[type=item,nbt={Item:{tag:{Tags:["cpp_green_tree"]}}},limit=1] at @s if block ~ ~-1 ~ grass_block run function cpp:generate/green_tree
execute as @e[type=item,nbt={Item:{tag:{Tags:["cpp_ginkgo_tree"]}}},limit=1] at @s if block ~ ~-1 ~ grass_block run function cpp:generate/ginkgo_tree
execute as @e[type=item,nbt={Item:{tag:{Tags:["cpp_red_prunas_tree"]}}},limit=1] at @s if block ~ ~-1 ~ grass_block run function cpp:generate/red_prunas_tree
execute as @e[type=item,nbt={Item:{tag:{Tags:["cpp_purple_prunas_tree"]}}},limit=1] at @s if block ~ ~-1 ~ grass_block run function cpp:generate/purple_prunas_tree
execute as @e[type=item,nbt={Item:{tag:{Tags:["cpp_pillar"]}}},limit=1] at @s run function cpp:generate/pillar
kill @e[type=item,nbt={Item:{tag:{Tags:["cpp_dead"]}}}]