summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["cpp_temp"],PickupDelay:40s,Age:20s}
execute as @e[type=item,distance=..0.1,sort=nearest,limit=1] run function cpp:chest_dropper/done
