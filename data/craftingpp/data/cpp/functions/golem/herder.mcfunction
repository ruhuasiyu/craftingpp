execute if block ~ ~-1 ~ #cpp:air run function cpp:golem/control_end
execute as @e[type=sheep,nbt={Sheared:0b},distance=..16] run function cpp:golem/herder_shears
execute as @e[type=item,distance=..16,predicate=cpp:item/egg] run function cpp:golem/herder_egg

execute as @e[type=#cpp:animals,distance=..16,nbt={Age:0}] run data merge entity @s {InLove:600}
execute store result score #t cppValue if entity @e[type=#cpp:animals,distance=..16]
execute if block ~ ~1 ~ red_wool if score #t cppValue matches 24.. as @e[limit=1,type=#cpp:animals,distance=..16,nbt={Age:0}] run function cpp:golem/herder_kill
execute if block ~ ~1 ~ pink_wool if score #t cppValue matches 48.. as @e[limit=1,type=#cpp:animals,distance=..16,nbt={Age:0}] run function cpp:golem/herder_kill
execute if block ~ ~1 ~ magenta_wool if score #t cppValue matches 96.. as @e[limit=1,type=#cpp:animals,distance=..16,nbt={Age:0}] run function cpp:golem/herder_kill
