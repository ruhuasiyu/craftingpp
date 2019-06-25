execute unless entity @a[distance=..6] run setblock ~ ~ ~ air
execute unless block ~ ~ ~ crafting_table run kill @e[type=item,nbt={Item:{id:"minecraft:crafting_table"}},sort=nearest,limit=1,distance=..2]
execute unless block ~ ~ ~ crafting_table run kill @s
