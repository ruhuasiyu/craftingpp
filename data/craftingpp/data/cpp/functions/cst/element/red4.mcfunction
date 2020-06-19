loot spawn ~ ~ ~ mine ~ ~ ~
execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:carrot"}},distance=..1] run data merge entity @s {Item:{id:"minecraft:bread",tag:{display:{Name:'{"italic":false,"translate":"item.cpp.baked_carrot"}'},id:"cpp:baked_carrot",CustomModelData:12970002}}}
setblock ~ ~ ~ air
