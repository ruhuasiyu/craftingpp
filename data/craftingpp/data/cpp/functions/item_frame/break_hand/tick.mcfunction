execute unless entity @e[type=minecraft:item_frame,distance=..0.01,nbt={Item:{tag:{id:"cpp:angry_hand"}}}] run kill @s 
execute unless block ~ ~1 ~ #cpp:fluid run loot spawn ~ ~1 ~ mine ~ ~1 ~ mainhand
execute unless block ~ ~1 ~ #cpp:fluid run setblock ~ ~1 ~ air
