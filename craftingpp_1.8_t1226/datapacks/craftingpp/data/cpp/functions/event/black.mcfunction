kill @s
xp add @p[distance=..2] 11
execute as @p[distance=..2,level=7..] store result score @s cppRot run data get entity @s Rotation[0]
execute as @p[distance=..2,level=7..] run scoreboard players add @s[scores={cppRot=..-1}] cppRot 360
execute at @p[distance=..2,level=7..,scores={cppRot=0..45}] run fill ~-1 ~-1 ~ ~1 ~-1 ~20 dirt keep
execute at @p[distance=..2,level=7..,scores={cppRot=46..135}] run fill ~ ~-1 ~-1 ~-20 ~-1 ~1 dirt keep
execute at @p[distance=..2,level=7..,scores={cppRot=135..225}] run fill ~-1 ~-1 ~ ~1 ~-1 ~-20 dirt keep
execute at @p[distance=..2,level=7..,scores={cppRot=224..315}] run fill ~ ~-1 ~-1 ~20 ~-1 ~1 dirt keep
execute at @p[distance=..2,level=7..,scores={cppRot=316..360}] run fill ~-1 ~-1 ~ ~1 ~-1 ~20 dirt keep
execute as @p[distance=..2,level=7..] run xp add @s -80

replaceitem entity @p[nbt={SelectedItemSlot:0}] hotbar.0 minecraft:lingering_potion{CustomPotionColor:1973019,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.black_force_of_moon"}}
replaceitem entity @p[nbt={SelectedItemSlot:1}] hotbar.1 minecraft:lingering_potion{CustomPotionColor:1973019,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.black_force_of_moon"}}
replaceitem entity @p[nbt={SelectedItemSlot:2}] hotbar.2 minecraft:lingering_potion{CustomPotionColor:1973019,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.black_force_of_moon"}}
replaceitem entity @p[nbt={SelectedItemSlot:3}] hotbar.3 minecraft:lingering_potion{CustomPotionColor:1973019,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.black_force_of_moon"}}
replaceitem entity @p[nbt={SelectedItemSlot:4}] hotbar.4 minecraft:lingering_potion{CustomPotionColor:1973019,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.black_force_of_moon"}}
replaceitem entity @p[nbt={SelectedItemSlot:5}] hotbar.5 minecraft:lingering_potion{CustomPotionColor:1973019,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.black_force_of_moon"}}
replaceitem entity @p[nbt={SelectedItemSlot:6}] hotbar.6 minecraft:lingering_potion{CustomPotionColor:1973019,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.black_force_of_moon"}}
replaceitem entity @p[nbt={SelectedItemSlot:7}] hotbar.7 minecraft:lingering_potion{CustomPotionColor:1973019,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.black_force_of_moon"}}
replaceitem entity @p[nbt={SelectedItemSlot:8}] hotbar.8 minecraft:lingering_potion{CustomPotionColor:1973019,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.black_force_of_moon"}}
xp add @p[distance=..2] -11
