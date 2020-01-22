execute unless entity @e[type=minecraft:item_frame,distance=..0.01,nbt={Item:{tag:{id:"cpp:angry_hand"}}}] run kill @s 
execute if entity @e[type=#cpp:golem_warrier,distance=..3,nbt={Invulnerable:0b},limit=1] run function cpp:item_frame/angry_hand/done
