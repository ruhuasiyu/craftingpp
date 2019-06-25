execute as @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function cpp:use_carrot_on_a_stick/golem/off
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function cpp:use_carrot_on_a_stick/golem/main

execute if block ~ ~ ~ #cpp:golem_east run scoreboard players set @e[type=zombie_pigman,tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 0
execute if block ~ ~ ~ #cpp:golem_south run scoreboard players set @e[type=zombie_pigman,tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 1
execute if block ~ ~ ~ #cpp:golem_west run scoreboard players set @e[type=zombie_pigman,tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 2
execute if block ~ ~ ~ #cpp:golem_north run scoreboard players set @e[type=zombie_pigman,tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 3
execute if block ~ ~ ~ #cpp:golem_up run scoreboard players set @e[type=zombie_pigman,tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 4
execute if block ~ ~ ~ #cpp:golem_down run scoreboard players set @e[type=zombie_pigman,tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 5
