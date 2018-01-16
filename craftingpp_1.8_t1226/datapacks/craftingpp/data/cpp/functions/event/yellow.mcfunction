xp add @p[distance=..2] 11
execute as @p[distance=..2,level=7..] run fill ~-7 ~-2 ~-7 ~7 ~ ~7 air replace #cpp:fluid
execute as @p[distance=..2,level=7..] run xp add @s -80
kill @s
replaceitem entity @p[nbt={SelectedItemSlot:0}] hotbar.0 minecraft:lingering_potion{CustomPotionColor:14602026,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.yellow_force_of_earth"}}
replaceitem entity @p[nbt={SelectedItemSlot:1}] hotbar.1 minecraft:lingering_potion{CustomPotionColor:14602026,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.yellow_force_of_earth"}}
replaceitem entity @p[nbt={SelectedItemSlot:2}] hotbar.2 minecraft:lingering_potion{CustomPotionColor:14602026,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.yellow_force_of_earth"}}
replaceitem entity @p[nbt={SelectedItemSlot:3}] hotbar.3 minecraft:lingering_potion{CustomPotionColor:14602026,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.yellow_force_of_earth"}}
replaceitem entity @p[nbt={SelectedItemSlot:4}] hotbar.4 minecraft:lingering_potion{CustomPotionColor:14602026,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.yellow_force_of_earth"}}
replaceitem entity @p[nbt={SelectedItemSlot:5}] hotbar.5 minecraft:lingering_potion{CustomPotionColor:14602026,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.yellow_force_of_earth"}}
replaceitem entity @p[nbt={SelectedItemSlot:6}] hotbar.6 minecraft:lingering_potion{CustomPotionColor:14602026,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.yellow_force_of_earth"}}
replaceitem entity @p[nbt={SelectedItemSlot:7}] hotbar.7 minecraft:lingering_potion{CustomPotionColor:14602026,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.yellow_force_of_earth"}}
replaceitem entity @p[nbt={SelectedItemSlot:8}] hotbar.8 minecraft:lingering_potion{CustomPotionColor:14602026,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.yellow_force_of_earth"}}
xp add @p[distance=..2] -11
