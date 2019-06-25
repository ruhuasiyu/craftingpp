fill ~-16 0 ~-16 ~15 0 ~15 barrier
fill ~-16 1 ~-16 ~15 1 ~15 bedrock
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_temp"]}
spreadplayers ~ ~ 0 15 false @e[type=area_effect_cloud,tag=cpp_temp]
execute at @e[type=area_effect_cloud,tag=cpp_temp,limit=1] run loot spawn ~ ~ ~ loot cpp:generate/markers
execute at @e[type=area_effect_cloud,tag=cpp_temp,limit=1] run spreadplayers ~ ~ 0 15 false @e[type=item,nbt={Item:{tag:{isStrMark:1b}}}]
kill @e[tag=cpp_temp]
execute as @e[type=item,nbt={Item:{tag:{isStrMark:1b}}}] at @s run function cpp:generate/build
function #cpp:generate
