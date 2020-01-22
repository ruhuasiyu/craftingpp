execute if entity @e[type=chicken,distance=..9,nbt={Age:0,InLove:0}] run function cpp:item_frame/toughen_hand/chicken_check
execute if entity @e[type=pig,distance=..9,nbt={Age:0,InLove:0}] run function cpp:item_frame/toughen_hand/pig_check
execute if entity @e[type=rabbit,distance=..9,nbt={Age:0,InLove:0}] run function cpp:item_frame/toughen_hand/rabbit_check
execute if entity @e[type=#cpp:eat_wheat,distance=..9,nbt={Age:0,InLove:0}] if data block ~ ~-1 ~ Items[{id:"minecraft:wheat"}] run function cpp:item_frame/toughen_hand/cow
execute if entity @e[type=minecraft:sheep,distance=..9,nbt={Sheared:0b,Age:0,InLove:0}] if data block ~ ~-1 ~ Items[{id:"minecraft:shears"}] run function cpp:item_frame/toughen_hand/shears
