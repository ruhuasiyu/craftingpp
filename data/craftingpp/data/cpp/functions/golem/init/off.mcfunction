data modify entity @e[type=zombified_piglin,tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] HandItems[0] set from entity @s Inventory:[{Slot:-106b}].tag.mainhand
data modify entity @e[type=zombified_piglin,tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] HandItems[1] set from entity @s Inventory:[{Slot:-106b}].tag.offhand
execute as @e[type=zombified_piglin,limit=1,sort=nearest,distance=..1,tag=cpp_golem] run data modify entity @s HandItems[1].tag.spawnPos set from entity @s Pos
replaceitem entity @s[gamemode=!creative] weapon.offhand air

