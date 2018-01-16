kill @s
execute as @p[distance=..2,level=4..] at @s run fill ~-1 63 ~-1 ~1 255 ~1 minecraft:air replace minecraft:dirt
execute as @p[distance=..2,level=4..] at @s run fill ~-1 63 ~-1 ~1 255 ~1 minecraft:air replace minecraft:stone
execute as @p[distance=..2,level=4..] at @s run fill ~-1 63 ~-1 ~1 255 ~1 minecraft:air replace minecraft:grass_block
execute as @p[distance=..2,level=4..] at @s run fill ~-1 1 ~-1 ~1 4 ~1 minecraft:dirt replace minecraft:bedrock
execute as @p[distance=..2,level=4..] at @s run fill ~-1 1 ~-1 ~1 62 ~1 minecraft:dirt keep
replaceitem entity @p[nbt={SelectedItemSlot:0}] hotbar.0 minecraft:lingering_potion{CustomPotionColor:2651799,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.cyan_force_of_mountain"}}
replaceitem entity @p[nbt={SelectedItemSlot:1}] hotbar.1 minecraft:lingering_potion{CustomPotionColor:2651799,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.cyan_force_of_mountain"}}
replaceitem entity @p[nbt={SelectedItemSlot:2}] hotbar.2 minecraft:lingering_potion{CustomPotionColor:2651799,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.cyan_force_of_mountain"}}
replaceitem entity @p[nbt={SelectedItemSlot:3}] hotbar.3 minecraft:lingering_potion{CustomPotionColor:2651799,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.cyan_force_of_mountain"}}
replaceitem entity @p[nbt={SelectedItemSlot:4}] hotbar.4 minecraft:lingering_potion{CustomPotionColor:2651799,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.cyan_force_of_mountain"}}
replaceitem entity @p[nbt={SelectedItemSlot:5}] hotbar.5 minecraft:lingering_potion{CustomPotionColor:2651799,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.cyan_force_of_mountain"}}
replaceitem entity @p[nbt={SelectedItemSlot:6}] hotbar.6 minecraft:lingering_potion{CustomPotionColor:2651799,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.cyan_force_of_mountain"}}
replaceitem entity @p[nbt={SelectedItemSlot:7}] hotbar.7 minecraft:lingering_potion{CustomPotionColor:2651799,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.cyan_force_of_mountain"}}
replaceitem entity @p[nbt={SelectedItemSlot:8}] hotbar.8 minecraft:lingering_potion{CustomPotionColor:2651799,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.cyan_force_of_mountain"}}
xp add @p[distance=..2,level=4..] -40
