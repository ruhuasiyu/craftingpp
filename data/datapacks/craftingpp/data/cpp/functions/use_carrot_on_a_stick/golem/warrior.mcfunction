function cpp:use_carrot_on_a_stick/golem/get_front_control_block
execute at @e[tag=cpp_front_control_block,limit=1] run summon zombie_pigman ~ ~ ~ {IsBaby:1b,Invulnerable:1b,NoAI:1b,Tags:["cpp_golem","cpp_golem_warrior"],DeathLootTable:"cpp:golem/golem_warrior",PersistenceRequired:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[]}},{}],ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f],Silent:1b}
execute at @e[tag=cpp_front_control_block,limit=1] run data modify entity @e[tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] HandItems[0].tag.Enchantments set from entity @s SelectedItem.tag.Enchantments
execute at @e[tag=cpp_front_control_block,limit=1] run replaceitem entity @s[gamemode=!creative,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] weapon.offhand air
execute at @e[tag=cpp_front_control_block,limit=1] run replaceitem entity @s[gamemode=!creative,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] weapon.mainhand air
execute at @e[tag=cpp_front_control_block,limit=1] if block ~ ~ ~ #cpp:golem_east run scoreboard players set @e[tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 0
execute at @e[tag=cpp_front_control_block,limit=1] if block ~ ~ ~ #cpp:golem_south run scoreboard players set @e[tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 1
execute at @e[tag=cpp_front_control_block,limit=1] if block ~ ~ ~ #cpp:golem_west run scoreboard players set @e[tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 2
execute at @e[tag=cpp_front_control_block,limit=1] if block ~ ~ ~ #cpp:golem_north run scoreboard players set @e[tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 3
execute at @e[tag=cpp_front_control_block,limit=1] if block ~ ~ ~ #cpp:golem_up run scoreboard players set @e[tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 4
execute at @e[tag=cpp_front_control_block,limit=1] if block ~ ~ ~ #cpp:golem_down run scoreboard players set @e[tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] cppGolemFace 5

kill @e[tag=cpp_front_control_block]
