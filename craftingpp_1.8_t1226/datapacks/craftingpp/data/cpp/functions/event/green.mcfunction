kill @s
xp add @p[distance=..2] 6
execute as @p[distance=..2,level=1..] at @s offset ~ ~1.62 ~ run function cpp:event/green_ray
replaceitem entity @p[nbt={SelectedItemSlot:0}] hotbar.0 minecraft:lingering_potion{CustomPotionColor:3887386,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.green_force_of_water"}}
replaceitem entity @p[nbt={SelectedItemSlot:1}] hotbar.1 minecraft:lingering_potion{CustomPotionColor:3887386,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.green_force_of_water"}}
replaceitem entity @p[nbt={SelectedItemSlot:2}] hotbar.2 minecraft:lingering_potion{CustomPotionColor:3887386,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.green_force_of_water"}}
replaceitem entity @p[nbt={SelectedItemSlot:3}] hotbar.3 minecraft:lingering_potion{CustomPotionColor:3887386,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.green_force_of_water"}}
replaceitem entity @p[nbt={SelectedItemSlot:4}] hotbar.4 minecraft:lingering_potion{CustomPotionColor:3887386,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.green_force_of_water"}}
replaceitem entity @p[nbt={SelectedItemSlot:5}] hotbar.5 minecraft:lingering_potion{CustomPotionColor:3887386,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.green_force_of_water"}}
replaceitem entity @p[nbt={SelectedItemSlot:6}] hotbar.6 minecraft:lingering_potion{CustomPotionColor:3887386,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.green_force_of_water"}}
replaceitem entity @p[nbt={SelectedItemSlot:7}] hotbar.7 minecraft:lingering_potion{CustomPotionColor:3887386,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.green_force_of_water"}}
replaceitem entity @p[nbt={SelectedItemSlot:8}] hotbar.8 minecraft:lingering_potion{CustomPotionColor:3887386,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.green_force_of_water"}}
xp add @p[distance=..2] -6
