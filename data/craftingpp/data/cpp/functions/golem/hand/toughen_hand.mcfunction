execute as @e[type=sheep,nbt={Sheared:0b},distance=..16] run function cpp:golem/herder_shears
tp @e[type=item,distance=..16,predicate=cpp:item/egg] ~ ~ ~
