function cpp:misc/loc_front/pos
function cpp:misc/get_front_air

execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] run loot spawn ~ ~255 ~ mine ~ ~ ~ shears{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] positioned ~ ~255 ~ run tag @e[type=item,sort=nearest,limit=1,distance=..2] add cpp_build_wand_block

execute if entity @e[type=item,tag=cpp_build_wand_block] at @e[type=area_effect_cloud,tag=cpp_front_air,distance=..9] run setblock ~ 254 ~ barrier
execute if entity @e[type=item,tag=cpp_build_wand_block] at @e[type=area_effect_cloud,tag=cpp_front_air,distance=..9] run summon falling_block ~ 255.000001 ~ {BlockState:{Name:"minecraft:stone"},Time:20,Tags:["cpp_build_wand_block_fall"]}
data modify entity @e[type=falling_block,tag=cpp_build_wand_block_fall,limit=1] BlockState.Name set from entity @e[type=item,tag=cpp_build_wand_block,limit=1] Item.id

data merge entity @e[type=area_effect_cloud,tag=cpp_front_air,distance=..9,limit=1] {Age:100,Duration:200}

execute as @s[nbt={SelectedItem:{tag:{cppType:"west_east"}}}] run tag @e[type=area_effect_cloud,tag=cpp_front_air,distance=..9,limit=1] add cpp_west_east
execute as @s[nbt={SelectedItem:{tag:{cppType:"north_south"}}}] run tag @e[type=area_effect_cloud,tag=cpp_front_air,distance=..9,limit=1] add cpp_north_south
execute as @s[nbt={SelectedItem:{tag:{cppType:"up_down"}}}] run tag @e[type=area_effect_cloud,tag=cpp_front_air,distance=..9,limit=1] add cpp_up_down

kill @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos]
kill @e[type=item,tag=cpp_build_wand_block]
