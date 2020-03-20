execute if block ~ ~ ~ #cpp:golem_east run scoreboard players set @s cppGolemFace 0
execute if block ~ ~ ~ #cpp:golem_south run scoreboard players set @s cppGolemFace 1
execute if block ~ ~ ~ #cpp:golem_west run scoreboard players set @s cppGolemFace 2
execute if block ~ ~ ~ #cpp:golem_north run scoreboard players set @s cppGolemFace 3
execute if block ~ ~ ~ #cpp:golem_up run scoreboard players set @s cppGolemFace 4
execute if block ~ ~ ~ #cpp:golem_down run scoreboard players set @s cppGolemFace 5
execute if block ~ ~ ~ #cpp:golem_end run function cpp:golem/control_end
execute if block ~ ~ ~ trapped_chest if data block ~ ~ ~ Items[] unless data entity @s HandItems[1].tag.BlockEntityTag.Items[{Slot:26b}] run function cpp:golem/control_in
execute if block ~ ~ ~ chest if data entity @s HandItems[1].tag.BlockEntityTag.Items[] run function cpp:golem/control_out
scoreboard players reset @s cppTick