data modify entity @e[type=zombie_pigman,tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] HandItems[0] set from entity @s SelectedItem.tag.mainhand
data modify entity @e[type=zombie_pigman,tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] HandItems[1] set from entity @s SelectedItem.tag.offhand
execute as @e[type=zombie_pigman,limit=1,sort=nearest,distance=..1,tag=cpp_golem] run data modify entity @s HandItems[1].tag.spawnPos set from entity @s Pos
replaceitem entity @s[gamemode=!creative] weapon.mainhand air
