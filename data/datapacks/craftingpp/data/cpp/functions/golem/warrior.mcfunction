scoreboard players add @s cppStoredxp 7
execute if score @s cppStoredxp >= #xp_in_bottle cppValue run summon item ~ ~ ~ {Item:{id:"minecraft:experience_bottle",Count:1b}}
execute if score @s cppStoredxp >= #xp_in_bottle cppValue run scoreboard players operation @s cppStoredxp -= #xp_in_bottle cppValue
loot spawn ~ ~ ~ kill @e[limit=1,type=#cpp:normal_mob,sort=nearest,distance=..1,nbt={Invulnerable:0b}]
execute as @e[limit=1,type=#cpp:normal_mob,sort=nearest,distance=..1,nbt={Invulnerable:0b}] run function cpp:kill
