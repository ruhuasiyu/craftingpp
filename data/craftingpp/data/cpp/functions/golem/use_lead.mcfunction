execute if entity @e[type=chicken,distance=..1,nbt={Age:0,InLove:0}] run function cpp:golem/use_lead_chicken_check
execute if entity @e[type=pig,distance=..1,nbt={Age:0,InLove:0}] run function cpp:golem/use_lead_pig_check
execute if entity @e[type=rabbit,distance=..1,nbt={Age:0,InLove:0}] run function cpp:golem/use_lead_rabbit_check
execute if entity @e[type=#cpp:eat_wheat,distance=..1,nbt={Age:0,InLove:0}] if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:wheat"}] run function cpp:golem/use_lead_cow